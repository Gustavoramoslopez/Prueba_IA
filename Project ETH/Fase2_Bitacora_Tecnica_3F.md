# Presupuesto Abierto 3F — Bitácora Técnica (Fase 2)

## Trabajo Práctico Final — Ethereum Developer Pack (ETH Kipu)

**Documento de trazabilidad del desarrollo técnico.** Registra decisiones, lineamientos del curso aplicados, y el estado de avance del código. Acompaña al documento de Fase 1 (`Fase1_Presupuesto_Abierto_3F.md`).

---

## 0. Lineamientos del curso EDP aplicados

Esta sección documenta qué se extrajo del material oficial del Ethereum Developer Pack (GitBook `edp.ethkipu.org`) y cómo condiciona el desarrollo. El objetivo declarado es **seguir los patrones y herramientas que enseña el curso, sin sobre-ingeniería**.

### 0.1 Patrones de diseño que enseña el curso (Módulo 3)

El material oficial del Módulo 3 detalla once patrones. El TP usa explícitamente estos, que coinciden con los del curso:

| Patrón del curso | Nombre en el material EDP | Uso en el TP |
|---|---|---|
| Checks-Effects-Interactions | "Patrón de Chequeo-Efectos-Interacción" | Toda función que mueve fondos |
| Withdrawal Pattern (Pull) | "Patrón de Retiro" | Devolución de proyectos fallidos |
| Access Restriction | "Patrón de Acceso Restringido" | Modificadores de rol en todos los contratos |
| Emergency Stop / Circuit Breaker | "Patrón de Parada de Emergencia" | Pausable en contratos con fondos |
| State Machine | "Patrón de Máquina de Estados" | Ciclo de vida del proyecto en el catálogo |
| Factory | "Patrón de Fábrica de Contratos" | Replicación a otros municipios (roadmap, no MVP) |
| Oráculo | "Patrón para obtener datos de un oráculo" | OráculoFiscal (versión simplificada, no Chainlink) |
| Iterable Mapping | "Patrón de Mapa Iterable" | Lista de proyectos con asignación por período (para iterar al cerrar) |
| Upgradeable / Proxy | "Patrón de Actualización de Contratos" | NO usado en MVP (decisión consciente, ver 0.4) |

**Nota importante:** el material del curso muestra los patrones con `require` y mensajes string clásicos (ej: `require(balances[msg.sender] >= _amount, "Saldo insuficiente")`). El TP usa **custom errors** (más gas-efficient, práctica recomendada en Solidity 0.8.4+) pero documenta la equivalencia, porque el curso evalúa que se entienda el patrón, no la sintaxis exacta.

### 0.2 Herramientas que enseña el curso (Módulo 4)

- **Hardhat** como entorno principal. El curso lo presenta como estándar.
- **Scaffold-ETH** mencionado como opción para prototipado rápido con front-end auto-actualizable. El curso lo recomienda para dApps; para el MVP del TP se usa Hardhat puro para los contratos y se deja Scaffold-ETH / front mínimo como opción.
- **Ethers.js** para interacción.
- **JSON-RPC** como capa de comunicación.
- **Remix** para pruebas rápidas (el curso lo usa mucho en módulos 2 y 3, pero el TP final usa Hardhat por testing y deploy reproducible).
- **IPFS vía Pinata** para metadata de NFTs (el curso usa Pinata explícitamente en el ejemplo de ERC-721).

### 0.3 Testing que enseña el curso (Módulo 5)

El material oficial de "Testing con Hardhat" define el estilo exacto que el tribunal espera ver. **El TP replica este patrón:**

- Plugin `@nomicfoundation/hardhat-toolbox`.
- Estructura: `describe` / `it`, con `loadFixture` para estado inicial reproducible.
- Assertions con **Chai estilo `expect`** (el curso lo declara como el más usado).
- Uso de **BigInt** (`1000n`) para evitar desbordamientos en JS.
- Fixtures con `deployXFixture()` que retorna `{ contrato, owner, addr1, addr2 }`.
- Verificación de revert: `await expect(...).to.be.revertedWith("mensaje")`.
- Verificación de eventos: `await expect(...).to.emit(contrato, "Evento").withArgs(...)`.
- Comando `npx hardhat test` y cobertura con `npx hardhat coverage`.

⚠️ **Decisión de compatibilidad:** el curso muestra `revertedWith("string")`. Como el TP usa custom errors, los tests usarán `revertedWithCustomError(contrato, "NombreError")`, que es el equivalente correcto para custom errors. Se documenta para que el tribunal entienda que es la versión moderna del mismo concepto.

### 0.4 Vulnerabilidades que enseña el curso (Módulo 5)

El material lista exactamente estas doce, que son las que el análisis de seguridad (T8) repasa una por una:

1. Reentrancy attack
2. Replay attack
3. Price Oracle Manipulation
4. Missing Access Control
5. Reward Manipulation
6. Failure to Initialize
7. Front-running
8. Invariant Breaks
9. Mishandling of ETH
10. Denial of Service (DoS)
11. Integer overflow/underflow
12. Phishing y Typosquatting

### 0.5 Principio rector del desarrollo: simple y alineado, no grande

Decisión explícita acordada con el autor: **el TP no debe ser más grande de lo necesario.** Se prioriza:
- Usar los patrones del curso, no inventar arquitecturas exóticas.
- Contratos legibles sobre contratos "clever".
- Cobertura de testing sólida sobre cantidad de features.
- Lo que el tribunal evalúa (Módulos 3 y 5) sobre vistosidad de front-end.

---

## 1. T1 — Arquitectura general

### 1.1 Capas

**Capa de interacción (off-chain):** frontend público de trazabilidad (sin wallet), frontend ciudadano (con wallet + SBT), panel institucional (oráculo y firma multisig).

**Capa on-chain (L2 testnet):** los siete contratos del sistema.

**Capa off-chain de soporte:** KYC municipal, sistema fiscal (Rentas/SIAF), IPFS, inspección de obra.

### 1.2 Stack tecnológico

| Componente | Elección | Justificación |
|---|---|---|
| Lenguaje | Solidity ^0.8.20 | Checks de overflow nativos, custom errors, OZ v5 |
| Seguridad | OpenZeppelin Contracts v5 | Estándar del curso, auditado |
| Entorno | Hardhat + hardhat-toolbox | El que enseña el Módulo 4 y 5 |
| Interacción | Ethers.js v6 | El que enseña el curso |
| Token de fondos | Mock ERC-20 | Simula stablecoin sin dependencia externa |
| Almacenamiento pesado | IPFS (Pinata) | El que usa el curso para metadata |
| Red | Arbitrum Sepolia u Optimism Sepolia (L2 testnet) | Gas marginal, mismo EVM que mainnet |

### 1.3 Red de despliegue

L2 testnet para el MVP. Razones: muchas transacciones pequeñas (cada asignación es una tx), gas marginal, verificable en explorador, código idéntico al de producción. No se usa mainnet en el TP por costo y riesgo.

---

## 2. T2 — Diseño de smart contracts

Siete contratos (seis funcionales + mock de stablecoin). Cada uno con responsabilidad única (SRP).

### Contrato 1 — `CiudadaniaSBT`
- **Responsabilidad:** padrón de identidad + fuente única de roles.
- **Hereda:** ERC721, ERC721Enumerable, AccessControl.
- **Soulbound:** override de `_update` revierte salvo mint y burn.
- **Roles:** MUNICIPIO_ROLE, CONCEJO_ROLE, AUDITOR_ROLE.
- **Struct:** `DatosCiudadano { bool esContribuyente; uint8 rangoAporte; uint64 fechaEmision; }`
- **Funciones:** `emitirSBT`, `revocarSBT`, `esCiudadano`, `totalCiudadanosActivos`.

### Contrato 2 — `OraculoFiscal`
- **Responsabilidad:** publicar datos fiscales por período.
- **Hereda:** AccessControl, Pausable.
- **Funciones:** `abrirPeriodo`, `publicarCuotasPoolA` (batch), `cuotaPoolA`, `corregirPeriodo` (timelock).
- Patrón Oráculo del Módulo 3 (versión simplificada, sin Chainlink, porque el dato es fiscal y lo publica el Municipio multisig).

### Contrato 3 — `CatalogoProyectos`
- **Responsabilidad:** registro y ciclo de vida (State Machine).
- **Hereda:** AccessControl, Pausable.
- **Enum:** `Propuesto, Avalado, Validado, Vigente, Financiado, Ejecutado, Fallido, Devuelto`.
- **Funciones:** `proponerCiudadano`, `avalar`, `validarFactibilidad`, `aprobarPorSilencio`, `proponerInstitucional`.

### Contrato 4 — `PoolA`
- **Responsabilidad:** cuota individual asignable + asignación porcentual + devolución de fallidos.
- **Hereda:** AccessControl, ReentrancyGuard, Pausable.
- **Funciones:** `asignar`, `cerrarPeriodo`, `reclamarDevolucion` (Pull).
- Patrón Withdrawal (Pull-over-Push) del Módulo 3: los fondos de un proyecto que no alcanza
  el umbral nunca salen del Pool, y cada asignador reclama su aporte.

### Contrato 5 — `PoolB`
- **Responsabilidad:** cuota igualitaria + asignación porcentual + devolución de fallidos.
- **Hereda:** AccessControl, ReentrancyGuard, Pausable.
- **Diferencia clave:** cuota = montoPoolB / totalCiudadanosActivos().
- **Funciones:** `asignar`, `cerrarPeriodo`, `reclamarDevolucion` (Pull).

### Contrato 6 — `Ejecucion`
- **Responsabilidad:** custodia de fondos de proyectos financiados + multisig 2-de-3.
- **Hereda:** AccessControl, ReentrancyGuard, Pausable.
- **Funciones:** `recibirFondos`, `firmarLiberacion`, `vencerPlazoEjecucion`.
- Nota: la devolución de proyectos que no alcanzan el umbral se resuelve en los Pools
  (donde quedan los fondos), no en este contrato.

### Contrato 7 — `GobernanzaAuditor`
- **Responsabilidad:** elección semestral on-chain del auditor.
- **Hereda:** AccessControl.
- **Funciones:** `postularse`, `votar`, `cerrarEleccion`.

### Mock — `StablecoinMock`
- ERC-20 simple para simular la stablecoin operativa en el MVP.

---

## 3. T3 — Patrones aplicados (mapeo al Módulo 3)

| Patrón | Dónde | Justificación |
|---|---|---|
| Checks-Effects-Interactions | Funciones con fondos | Previene reentrancy |
| Pull-over-Push (Withdrawal) | PoolA / PoolB.reclamarDevolucion | Evita DoS en devoluciones masivas |
| Circuit Breaker (Pausable) | Contratos con fondos/estado crítico | Mitiga errores del oráculo e incidentes |
| Access Restriction | Modificadores de rol | Separación Municipio/Concejo/Auditor/Ciudadano |
| State Machine | CatalogoProyectos | Transiciones de estado válidas |
| Oráculo | OraculoFiscal | Trae dato fiscal off-chain |
| Iterable Mapping | Lista de proyectos con asignación por período | Permite iterar al cerrar el período para evaluar umbrales |
| Factory | Roadmap v2 | Replicación a municipios (NO en MVP) |
| Proxy/Upgradeable | NO usado en MVP | Inmutabilidad real = menor superficie de ataque |

---

## 4. T4 — Estándares y librerías

- **ERC-721 + Enumerable** (CiudadaniaSBT, Soulbound vía override de `_update`).
- **ERC-20** (StablecoinMock).
- **ERC-165** (heredado de OZ).
- **OpenZeppelin v5:** ERC721, ERC721Enumerable, ERC20, AccessControl, ReentrancyGuard, Pausable.

### Metadata del SBT en IPFS (ejemplo)
```json
{
  "name": "Ciudadano de Tres de Febrero #1234",
  "description": "Credencial de ciudadanía verificada. No transferible.",
  "image": "ipfs://<CID_imagen>",
  "attributes": [
    { "trait_type": "Estado", "value": "Contribuyente" },
    { "trait_type": "Rango de aporte", "value": "Escalón 3" },
    { "trait_type": "Período de emisión", "value": "2026-05" },
    { "trait_type": "Municipio", "value": "Tres de Febrero" }
  ]
}
```
⚠️ Solo rango escalonado, nunca monto exacto (premisa no negociable 3).

---

## 5. Alcance del código — CONFIRMADO: Opción 2 (Núcleo)

Se desarrolla el núcleo completo: los 8 contratos compilando en Hardhat con Solidity 0.8.24 y OpenZeppelin v5.6.1.

### Estado del Bloque T-B (código)

| Contrato | Estado | Patrones aplicados |
|---|---|---|
| `ICiudadania.sol` | ✅ Compila | Interfaz compartida |
| `StablecoinMock.sol` | ✅ Compila | ERC-20 + Ownable |
| `CiudadaniaSBT.sol` | ✅ Compila | ERC-721 Soulbound + AccessControl |
| `OraculoFiscal.sol` | ✅ Compila | Oráculo + Circuit Breaker |
| `CatalogoProyectos.sol` | ✅ Compila | State Machine + Access Restriction |
| `Ejecucion.sol` | ✅ Compila | Pull-over-Push + CEI + ReentrancyGuard |
| `PoolA.sol` | ✅ Compila | CEI + ReentrancyGuard + Pausable |
| `PoolB.sol` | ✅ Compila | CEI + ReentrancyGuard + Pausable |
| `GobernanzaAuditor.sol` | ✅ Compila | Votación 1 SBT = 1 voto |

**Resultado:** `Compiled 35 Solidity files successfully (evm target: cancun)` — sin warnings.

### Decisiones técnicas tomadas durante la compilación (relevantes para README y defensa)

1. **Compilador 0.8.24 en lugar de 0.8.20.** OpenZeppelin v5.6 requiere `^0.8.24` en algunas utilidades internas (`Bytes.sol`). El pragma de los contratos sigue siendo `^0.8.20` (el `^` admite cualquier 0.8.x ≥ 0.8.20), pero el compilador configurado es 0.8.24. Esto cumple el requisito del TP de "pragma ^0.8.20 o superior".

2. **`evmVersion: "cancun"`.** OZ v5.6 usa el opcode `mcopy`, introducido en la EVM Cancún. Sin este target, la compilación falla. Las L2 objetivo (Arbitrum, Optimism, Base) ya soportan Cancún, así que no hay problema de despliegue.

3. **Custom errors en lugar de `require` con strings.** El material del curso muestra `require(cond, "mensaje")`. El TP usa custom errors (`error X()` + `revert X()`) por eficiencia de gas, que es la práctica recomendada desde Solidity 0.8.4. Los tests usarán `revertedWithCustomError`.

### Simplificaciones conscientes del MVP (para no inflar)

- **PoolA: asignación única por período** (no modificación múltiple). La premisa de Fase 1 permitía modificación libre durante 28 días; en el MVP de contrato se simplifica a una asignación por período para reducir superficie. Se documenta como diferido a v2.
- **OraculoFiscal: corrección sin timelock.** En producción la corrección de un período debería tener timelock; en el MVP es directa por `MUNICIPIO_ROLE`. Reconocido como flanco débil.
- **Caducidad de cuotas Pool A → Pool B: fuera de alcance del MVP.** Detectar las cuotas no asignadas requiere enumerar contribuyentes y sus cuotas, algo difícil de hacer puramente on-chain (no hay cron en EVM y la iteración masiva es cara/insegura). Se difiere a v2, donde el Municipio calcularía el remanente off-chain y lo transferiría con una función admin. La mecánica `recibirCaducadas` se removió del contrato para no dejar código a medio cablear.

### Entorno reproducible

- Node v22, npm 10.
- Hardhat 2.22 + `@nomicfoundation/hardhat-toolbox` 5.
- OpenZeppelin Contracts 5.6.1.
- Compilador: paquete npm `solc` 0.8.24 (wasm) configurado como build local en `hardhat.config.js`.

⚠️ Nota de entorno: en este entorno de desarrollo el binario nativo de `solc` no se pudo descargar de `binaries.soliditylang.org` (restricción de red). Se resolvió usando el paquete npm `solc` (wasm) como compilador local. En una máquina con internet normal, esto NO es necesario: basta `solidity: { version: "0.8.24", settings: { evmVersion: "cancun" } }`.

---

## Registro de fuentes consultadas del curso

- Módulo 3 — Patrones de Diseño: `edp.ethkipu.org/modulo-3/estandares-librerias-y-patrones/patrones-de-diseno`
- Módulo 3 — OpenZeppelin: `edp.ethkipu.org/modulo-3/estandares-librerias-y-patrones/open-zeppelin`
- Módulo 3 — Crea un Token ERC-721: `edp.ethkipu.org/modulo-3/estandares-librerias-y-patrones/crea-un-token-erc-721`
- Módulo 4 — Toolkit (Hardhat, Ethers.js, Scaffold-ETH): `edp.ethkipu.org/modulo-4/toolkit-para-desarrollo-ethereum`
- Módulo 5 — Testing con Hardhat: `edp.ethkipu.org/modulo-5/seguridad-pruebas-y-auditoria/pruebas/testing-con-hardhat`
- Módulo 5 — Principales vulnerabilidades: `edp.ethkipu.org/modulo-5/seguridad-pruebas-y-auditoria/seguridad/principales-vulnerabilidades-en-smart-contracts`
- Repo oficial: `github.com/ETH-KIPU/ethereum-developer-pack`

**Pendiente de incorporar:** transcripciones de clases (carpeta local del autor, aún no subidas) y contenido del pad de Riseup (bloqueado para acceso automatizado).
