const { expect } = require("chai");
const { ethers } = require("hardhat");
const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");

// Tests del padrón Soulbound. Verifican: emisión, revocación, no-transferibilidad
// (lo que hace "soulbound" al token) y control de acceso por rol.
describe("CiudadaniaSBT", function () {
  async function desplegarFixture() {
    const [municipio, ciudadano1, ciudadano2, ajeno] = await ethers.getSigners();

    const SBT = await ethers.getContractFactory("CiudadaniaSBT");
    const sbt = await SBT.deploy(municipio.address);
    await sbt.waitForDeployment();

    return { sbt, municipio, ciudadano1, ciudadano2, ajeno };
  }

  it("emite un SBT y refleja ciudadanía/contribuyente", async function () {
    const { sbt, municipio, ciudadano1 } = await loadFixture(desplegarFixture);

    await expect(sbt.connect(municipio).emitirSBT(ciudadano1.address, true, 2))
      .to.emit(sbt, "SBTEmitido")
      .withArgs(ciudadano1.address, 1n, true);

    expect(await sbt.esCiudadano(ciudadano1.address)).to.equal(true);
    expect(await sbt.esContribuyente(ciudadano1.address)).to.equal(true);
    expect(await sbt.totalCiudadanosActivos()).to.equal(1n);
    expect(await sbt.tokenDe(ciudadano1.address)).to.equal(1n);
  });

  it("no permite dos SBT para la misma cuenta", async function () {
    const { sbt, municipio, ciudadano1 } = await loadFixture(desplegarFixture);
    await sbt.connect(municipio).emitirSBT(ciudadano1.address, false, 0);
    await expect(
      sbt.connect(municipio).emitirSBT(ciudadano1.address, true, 1)
    ).to.be.revertedWithCustomError(sbt, "YaEsCiudadano");
  });

  it("solo el MUNICIPIO_ROLE puede emitir", async function () {
    const { sbt, ajeno, ciudadano1 } = await loadFixture(desplegarFixture);
    await expect(
      sbt.connect(ajeno).emitirSBT(ciudadano1.address, true, 1)
    ).to.be.revertedWithCustomError(sbt, "AccessControlUnauthorizedAccount");
  });

  it("es soulbound: la transferencia revierte", async function () {
    const { sbt, municipio, ciudadano1, ciudadano2 } = await loadFixture(desplegarFixture);
    await sbt.connect(municipio).emitirSBT(ciudadano1.address, true, 1);

    await expect(
      sbt.connect(ciudadano1).transferFrom(ciudadano1.address, ciudadano2.address, 1)
    ).to.be.revertedWithCustomError(sbt, "TransferenciaNoPermitida");
  });

  it("permite revocar (quemar) un SBT", async function () {
    const { sbt, municipio, ciudadano1 } = await loadFixture(desplegarFixture);
    await sbt.connect(municipio).emitirSBT(ciudadano1.address, true, 1);

    await expect(sbt.connect(municipio).revocarSBT(1))
      .to.emit(sbt, "SBTRevocado")
      .withArgs(1n, ciudadano1.address);

    expect(await sbt.esCiudadano(ciudadano1.address)).to.equal(false);
    expect(await sbt.totalCiudadanosActivos()).to.equal(0n);
  });

  it("revocar un token inexistente revierte", async function () {
    const { sbt, municipio } = await loadFixture(desplegarFixture);
    await expect(
      sbt.connect(municipio).revocarSBT(99)
    ).to.be.revertedWithCustomError(sbt, "NoEsCiudadano");
  });
});
