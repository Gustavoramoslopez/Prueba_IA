"""
Descarga transcripciones de una playlist de YouTube a Markdown.

Estrategia:
  1) Lista los videos con yt-dlp (sin bajar el audio/video).
  2) Por cada video intenta youtube-transcript-api (rápido, texto plano).
  3) Si falla, cae a yt-dlp con --write-auto-sub --skip-download y parsea el .vtt.
  4) Escribe un .md por clase con metadata + transcripción limpia (sin timestamps).
  5) Genera INDICE.md con la lista de clases.

Resiliencia:
  - Modo resume: si el .md ya tiene transcripción real, se saltea.
  - Delay configurable entre videos para evitar rate-limit.
  - Backoff exponencial ante HTTP 429 / IpBlocked.
  - Soporta --cookies-from-browser para autenticar contra YouTube y bajar
    el riesgo de bloqueo por IP.
  - Tolera videos eliminados / sin metadata.

Uso:
  python descargar_transcripciones.py <PLAYLIST_URL_O_ID> [opciones]

Opciones útiles:
  --lang es,en
  --out  ./transcripciones
  --sleep 3                       # segundos entre videos
  --cookies-from-browser chrome   # chrome|edge|firefox|brave|...
"""
from __future__ import annotations

import argparse
import random
import re
import sys
import tempfile
import time
import shutil
from pathlib import Path
from typing import Optional

from yt_dlp import YoutubeDL
from youtube_transcript_api import YouTubeTranscriptApi
from youtube_transcript_api._errors import (
    TranscriptsDisabled,
    NoTranscriptFound,
    VideoUnavailable,
)

SIN_SUBS_MARKER = "_(Sin transcripción disponible)_"


def slugify(text: Optional[str], max_len: int = 80) -> str:
    if not text:
        return "sin-titulo"
    text = re.sub(r"[\\/:*?\"<>|]", "", text)
    text = re.sub(r"\s+", " ", text).strip()
    return text[:max_len].rstrip(" .") or "sin-titulo"


def fmt_duration(seconds: Optional[int]) -> str:
    if not seconds:
        return "?"
    h, rem = divmod(int(seconds), 3600)
    m, s = divmod(rem, 60)
    return f"{h:d}:{m:02d}:{s:02d}" if h else f"{m:d}:{s:02d}"


def list_playlist(url: str, cookies_browser: Optional[str]) -> dict:
    opts = {
        "quiet": True,
        "no_warnings": True,
        "extract_flat": "in_playlist",
        "skip_download": True,
    }
    if cookies_browser:
        opts["cookiesfrombrowser"] = (cookies_browser,)
    with YoutubeDL(opts) as ydl:
        info = ydl.extract_info(url, download=False)
    return info


def fetch_via_api(video_id: str, langs: list[str]) -> Optional[str]:
    try:
        api = YouTubeTranscriptApi()
        transcript_list = api.list(video_id)
        try:
            t = transcript_list.find_transcript(langs)
        except NoTranscriptFound:
            try:
                t = transcript_list.find_generated_transcript(langs)
            except NoTranscriptFound:
                available = list(transcript_list)
                if not available:
                    return None
                t = available[0]
        fetched = t.fetch()
        return "\n".join(seg.text.strip() for seg in fetched if seg.text.strip())
    except (TranscriptsDisabled, NoTranscriptFound, VideoUnavailable):
        return None
    except Exception as exc:  # noqa: BLE001
        name = exc.__class__.__name__
        # Mensaje recortado para no inundar el log
        msg = str(exc).splitlines()[0][:160] if str(exc) else ""
        print(f"    [api] {name}: {msg}")
        if name in {"IpBlocked", "RequestBlocked", "TooManyRequests"}:
            # señalizar al loop principal
            raise RuntimeError("RATE_LIMIT_API") from exc
        return None


def clean_vtt(vtt_text: str) -> str:
    lines = vtt_text.splitlines()
    out: list[str] = []
    seen: set[str] = set()
    for ln in lines:
        if not ln.strip():
            continue
        if ln.startswith(("WEBVTT", "Kind:", "Language:", "NOTE")):
            continue
        if "-->" in ln:
            continue
        if re.match(r"^\d+$", ln.strip()):
            continue
        cleaned = re.sub(r"<[^>]+>", "", ln).strip()
        if not cleaned or cleaned in seen:
            continue
        seen.add(cleaned)
        out.append(cleaned)
    return "\n".join(out)


def fetch_via_ytdlp(video_url: str, langs: list[str], cookies_browser: Optional[str]) -> Optional[str]:
    tmpdir = Path(tempfile.mkdtemp(prefix="yt_subs_"))
    try:
        opts = {
            "quiet": True,
            "no_warnings": True,
            "skip_download": True,
            "writesubtitles": True,
            "writeautomaticsub": True,
            "subtitleslangs": langs + ["es.*", "en.*"],
            "subtitlesformat": "vtt",
            "outtmpl": str(tmpdir / "%(id)s.%(ext)s"),
            "retries": 3,
            "fragment_retries": 3,
        }
        if cookies_browser:
            opts["cookiesfrombrowser"] = (cookies_browser,)
        with YoutubeDL(opts) as ydl:
            ydl.download([video_url])
        vtts = sorted(tmpdir.glob("*.vtt"))
        if not vtts:
            return None
        preferred = None
        for lang in langs:
            for p in vtts:
                if f".{lang}" in p.name:
                    preferred = p
                    break
            if preferred:
                break
        chosen = preferred or vtts[0]
        return clean_vtt(chosen.read_text(encoding="utf-8", errors="replace"))
    except Exception as exc:  # noqa: BLE001
        name = exc.__class__.__name__
        msg = str(exc).splitlines()[0][:160] if str(exc) else ""
        print(f"    [ytdlp] {name}: {msg}")
        if "429" in msg or "Too Many Requests" in msg:
            raise RuntimeError("RATE_LIMIT_YTDLP") from exc
        return None
    finally:
        shutil.rmtree(tmpdir, ignore_errors=True)


def video_metadata(video_url: str, cookies_browser: Optional[str]) -> dict:
    opts = {"quiet": True, "no_warnings": True, "skip_download": True}
    if cookies_browser:
        opts["cookiesfrombrowser"] = (cookies_browser,)
    with YoutubeDL(opts) as ydl:
        return ydl.extract_info(video_url, download=False)


def write_markdown(out_dir: Path, idx: int, total: int, meta: dict, transcript: Optional[str]) -> Path:
    title = meta.get("title") or "sin-titulo"
    vid = meta.get("id") or ""
    duration = fmt_duration(meta.get("duration"))
    uploader = meta.get("uploader") or ""
    upload_date = meta.get("upload_date") or ""
    url = meta.get("webpage_url") or (f"https://www.youtube.com/watch?v={vid}" if vid else "")
    if upload_date and len(upload_date) == 8:
        upload_date = f"{upload_date[0:4]}-{upload_date[4:6]}-{upload_date[6:8]}"

    fname = f"{idx:02d} - {slugify(title)}.md"
    path = out_dir / fname

    body = transcript if transcript else SIN_SUBS_MARKER
    md = (
        f"# {idx:02d}/{total:02d} — {title}\n\n"
        f"- **Video:** [{url}]({url})\n"
        f"- **ID:** `{vid}`\n"
        f"- **Canal:** {uploader}\n"
        f"- **Fecha:** {upload_date or '?'}\n"
        f"- **Duración:** {duration}\n\n"
        f"---\n\n"
        f"## Transcripción\n\n"
        f"{body}\n"
    )
    path.write_text(md, encoding="utf-8")
    return path


def existing_transcript_path(out_dir: Path, idx: int) -> Optional[Path]:
    """Devuelve el .md existente para este índice si ya tiene transcripción real."""
    prefix = f"{idx:02d} - "
    for p in out_dir.glob(f"{prefix}*.md"):
        try:
            content = p.read_text(encoding="utf-8", errors="replace")
        except Exception:  # noqa: BLE001
            continue
        if SIN_SUBS_MARKER not in content and "## Transcripción" in content:
            return p
    return None


def cooldown(seconds: float, reason: str) -> None:
    print(f"    >>> cooldown {seconds:.0f}s ({reason})")
    time.sleep(seconds)


def main() -> int:
    parser = argparse.ArgumentParser(description="Descarga transcripciones de una playlist a Markdown.")
    parser.add_argument("playlist", help="URL o ID de la playlist de YouTube")
    parser.add_argument("--lang", default="es,en", help="Idiomas preferidos, separados por coma (default: es,en)")
    parser.add_argument("--out", default="transcripciones", help="Carpeta de salida (default: ./transcripciones)")
    parser.add_argument("--sleep", type=float, default=2.5, help="Segundos de espera entre videos (default: 2.5)")
    parser.add_argument("--cookies-from-browser", default=None,
                        help="Nombre del navegador para leer cookies (chrome|edge|firefox|brave|...). "
                             "Reduce el riesgo de IpBlocked / 429.")
    parser.add_argument("--force", action="store_true",
                        help="Reprocesar incluso si ya hay un .md con transcripción.")
    parser.add_argument("--only", default=None,
                        help="Rango/lista de índices a procesar (ej: 19-32 o 19,20,30).")
    args = parser.parse_args()

    langs = [x.strip() for x in args.lang.split(",") if x.strip()]
    out_dir = Path(args.out).resolve()
    out_dir.mkdir(parents=True, exist_ok=True)
    cookies_browser = args.cookies_from_browser

    only_indices: Optional[set[int]] = None
    if args.only:
        only_indices = set()
        for part in args.only.split(","):
            part = part.strip()
            if not part:
                continue
            if "-" in part:
                a, b = part.split("-", 1)
                only_indices.update(range(int(a), int(b) + 1))
            else:
                only_indices.add(int(part))

    print("==> Listando playlist...")
    info = list_playlist(args.playlist, cookies_browser)
    entries = [e for e in info.get("entries", []) if e]
    total = len(entries)
    pl_title = info.get("title", "playlist")
    print(f"    {total} videos en '{pl_title}'")

    ok = 0
    fail = 0
    skipped = 0

    for i, entry in enumerate(entries, start=1):
        if only_indices is not None and i not in only_indices:
            continue

        vid = entry.get("id")
        title_hint = entry.get("title") or "?"
        video_url = entry.get("url") or (f"https://www.youtube.com/watch?v={vid}" if vid else None)
        if video_url and not video_url.startswith("http"):
            video_url = f"https://www.youtube.com/watch?v={video_url}"

        print(f"[{i:02d}/{total:02d}] {title_hint}")

        # Resume
        if not args.force:
            existing = existing_transcript_path(out_dir, i)
            if existing:
                print(f"    -> ya existe ({existing.name}), salto")
                skipped += 1
                continue

        if not video_url:
            print("    -> sin URL, no se puede procesar")
            fail += 1
            continue

        try:
            meta = video_metadata(video_url, cookies_browser)
        except Exception as exc:  # noqa: BLE001
            print(f"    metadata error: {exc.__class__.__name__}: {str(exc).splitlines()[0][:160]}")
            meta = {"id": vid, "title": title_hint, "webpage_url": video_url}

        transcript: Optional[str] = None
        attempts = 0
        while attempts < 3 and transcript is None:
            attempts += 1
            try:
                print(f"    -> [intento {attempts}] youtube-transcript-api...")
                transcript = fetch_via_api(vid, langs) if vid else None
                if transcript:
                    break
                print(f"    -> [intento {attempts}] fallback yt-dlp...")
                transcript = fetch_via_ytdlp(video_url, langs, cookies_browser)
                if transcript:
                    break
                # ningún método dio resultado, no es rate-limit, no insistir
                break
            except RuntimeError as r:
                wait = min(120, 15 * (2 ** (attempts - 1))) + random.uniform(0, 5)
                cooldown(wait, str(r))

        path = write_markdown(out_dir, i, total, meta, transcript)
        estado = "OK" if transcript else "SIN SUBS"
        if transcript:
            ok += 1
        else:
            fail += 1
        print(f"    -> {path.name} ({estado})")

        # delay entre videos para no enojar a YouTube
        if args.sleep > 0:
            time.sleep(args.sleep + random.uniform(0, 1.0))

    # Reconstruir INDICE a partir de todos los .md presentes
    md_files = sorted(out_dir.glob("[0-9][0-9] - *.md"))
    index_lines = [f"# {pl_title}", "", f"_{total} clases. Generado por descargar_transcripciones.py_", "",
                   "| # | Clase | Estado |", "|---|---|---|"]
    for p in md_files:
        m = re.match(r"^(\d{2}) - (.+)\.md$", p.name)
        if not m:
            continue
        idx_str, name = m.group(1), m.group(2)
        content = p.read_text(encoding="utf-8", errors="replace")
        estado = "SIN SUBS" if SIN_SUBS_MARKER in content else "OK"
        index_lines.append(f"| {idx_str} | [{name}]({p.name}) | {estado} |")
    (out_dir / "INDICE.md").write_text("\n".join(index_lines) + "\n", encoding="utf-8")

    print(f"\n==> Listo. {ok} OK / {fail} sin subs / {skipped} salteados. Salida: {out_dir}")
    return 0 if fail == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
