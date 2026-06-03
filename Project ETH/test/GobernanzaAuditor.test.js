const { expect } = require("chai");
const { ethers } = require("hardhat");
const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");

// Tests de la elección semestral del auditor ciudadano. Al cerrar, el contrato
// otorga el AUDITOR_ROLE al ganador en el padrón SBT (grant cruzado).
describe("GobernanzaAuditor", function () {
  async function desplegarFixture() {
    const [municipio, c1, c2, c3, ajeno] = await ethers.getSigners();

    const SBT = await ethers.getContractFactory("CiudadaniaSBT");
    const sbt = await SBT.deploy(municipio.address);
    await sbt.waitForDeployment();

    const Gob = await ethers.getContractFactory("GobernanzaAuditor");
    const gob = await Gob.deploy(await sbt.getAddress(), municipio.address);
    await gob.waitForDeployment();

    // El contrato de gobernanza necesita DEFAULT_ADMIN_ROLE en el SBT
    // para poder otorgar/revocar el AUDITOR_ROLE.
    const DEFAULT_ADMIN_ROLE = await sbt.DEFAULT_ADMIN_ROLE();
    await sbt.connect(municipio).grantRole(DEFAULT_ADMIN_ROLE, await gob.getAddress());

    for (const c of [c1, c2, c3]) {
      await sbt.connect(municipio).emitirSBT(c.address, true, 1);
    }

    return { sbt, gob, municipio, c1, c2, c3, ajeno };
  }

  it("corre una elección y otorga el AUDITOR_ROLE al ganador", async function () {
    const { sbt, gob, municipio, c1, c2, c3 } = await loadFixture(desplegarFixture);

    await gob.connect(municipio).abrirEleccion();
    expect(await gob.eleccionActual()).to.equal(1n);

    await gob.connect(c1).postularse();
    await gob.connect(c2).postularse();

    await gob.connect(c1).votar(c1.address);
    await gob.connect(c2).votar(c1.address);
    await gob.connect(c3).votar(c1.address);

    await expect(gob.connect(municipio).cerrarEleccion())
      .to.emit(gob, "AuditorElecto")
      .withArgs(1n, c1.address, 3n);

    expect(await gob.auditorVigente()).to.equal(c1.address);
    const AUDITOR_ROLE = await sbt.AUDITOR_ROLE();
    expect(await sbt.hasRole(AUDITOR_ROLE, c1.address)).to.equal(true);
  });

  it("no permite votar dos veces", async function () {
    const { gob, municipio, c1, c2 } = await loadFixture(desplegarFixture);
    await gob.connect(municipio).abrirEleccion();
    await gob.connect(c1).postularse();
    await gob.connect(c2).votar(c1.address);
    await expect(gob.connect(c2).votar(c1.address)).to.be.revertedWithCustomError(
      gob,
      "YaVotaste"
    );
  });

  it("no permite votar a un no postulado", async function () {
    const { gob, municipio, c1, c2 } = await loadFixture(desplegarFixture);
    await gob.connect(municipio).abrirEleccion();
    await expect(gob.connect(c1).votar(c2.address)).to.be.revertedWithCustomError(
      gob,
      "NoPostulado"
    );
  });

  it("requiere SBT para postularse", async function () {
    const { gob, municipio, ajeno } = await loadFixture(desplegarFixture);
    await gob.connect(municipio).abrirEleccion();
    await expect(gob.connect(ajeno).postularse()).to.be.revertedWithCustomError(
      gob,
      "SinSBT"
    );
  });

  it("no permite abrir una elección ya abierta", async function () {
    const { gob, municipio } = await loadFixture(desplegarFixture);
    await gob.connect(municipio).abrirEleccion();
    await expect(gob.connect(municipio).abrirEleccion()).to.be.revertedWithCustomError(
      gob,
      "EleccionYaAbierta"
    );
  });
});
