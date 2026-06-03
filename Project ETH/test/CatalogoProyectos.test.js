const { expect } = require("chai");
const { ethers } = require("hardhat");
const { loadFixture, time } = require("@nomicfoundation/hardhat-network-helpers");

// Tests de la máquina de estados del catálogo: propuesta ciudadana, avales,
// validación del Concejo y aprobación por silencio positivo.
describe("CatalogoProyectos", function () {
  // Estados (enum): Propuesto=0, Avalado=1, Validado=2, Vigente=3, ...
  const PROPUESTO = 0n;
  const AVALADO = 1n;
  const VALIDADO = 2n;
  const VIGENTE = 3n;
  const POOL_A = 0; // Pool enum

  async function desplegarFixture() {
    const [municipio, concejo, c1, c2, c3] = await ethers.getSigners();

    const SBT = await ethers.getContractFactory("CiudadaniaSBT");
    const sbt = await SBT.deploy(municipio.address);
    await sbt.waitForDeployment();

    const Stable = await ethers.getContractFactory("StablecoinMock");
    const stable = await Stable.deploy(municipio.address);
    await stable.waitForDeployment();

    const Catalogo = await ethers.getContractFactory("CatalogoProyectos");
    const catalogo = await Catalogo.deploy(
      await sbt.getAddress(),
      await stable.getAddress(),
      municipio.address
    );
    await catalogo.waitForDeployment();

    // Concejo
    const CONCEJO_ROLE = await catalogo.CONCEJO_ROLE();
    await catalogo.connect(municipio).grantRole(CONCEJO_ROLE, concejo.address);

    // Padrón: tres ciudadanos
    for (const c of [c1, c2, c3]) {
      await sbt.connect(municipio).emitirSBT(c.address, true, 1);
    }

    return { catalogo, sbt, municipio, concejo, c1, c2, c3 };
  }

  it("una propuesta ciudadana arranca en Propuesto", async function () {
    const { catalogo, c1 } = await loadFixture(desplegarFixture);
    await catalogo.connect(c1).proponerCiudadano("ipfs://cid1", 100, 0, POOL_A);
    expect(await catalogo.estadoDe(1)).to.equal(PROPUESTO);
  });

  it("requiere SBT para proponer", async function () {
    const { catalogo, municipio } = await loadFixture(desplegarFixture);
    // municipio no tiene SBT
    await expect(
      catalogo.connect(municipio).proponerCiudadano("ipfs://x", 100, 0, POOL_A)
    ).to.be.revertedWithCustomError(catalogo, "SinSBT");
  });

  it("pasa a Avalado al alcanzar el mínimo de avales (3) y no permite doble aval", async function () {
    const { catalogo, c1, c2, c3 } = await loadFixture(desplegarFixture);
    await catalogo.connect(c1).proponerCiudadano("ipfs://cid1", 100, 0, POOL_A);

    await catalogo.connect(c1).avalar(1);
    await catalogo.connect(c2).avalar(1);
    expect(await catalogo.estadoDe(1)).to.equal(PROPUESTO); // aún 2 avales

    await catalogo.connect(c3).avalar(1);
    expect(await catalogo.estadoDe(1)).to.equal(AVALADO);

    await expect(catalogo.connect(c1).avalar(1)).to.be.revertedWithCustomError(
      catalogo,
      "EstadoInvalido"
    );
  });

  it("el Concejo valida la factibilidad y luego el Municipio activa", async function () {
    const { catalogo, municipio, concejo, c1, c2, c3 } = await loadFixture(desplegarFixture);
    await catalogo.connect(c1).proponerCiudadano("ipfs://cid1", 100, 0, POOL_A);
    await catalogo.connect(c1).avalar(1);
    await catalogo.connect(c2).avalar(1);
    await catalogo.connect(c3).avalar(1);

    await catalogo.connect(concejo).validarFactibilidad(1, true);
    expect(await catalogo.estadoDe(1)).to.equal(VALIDADO);

    await catalogo.connect(municipio).activarProyecto(1);
    expect(await catalogo.estadoDe(1)).to.equal(VIGENTE);
  });

  it("aprobación por silencio: solo después del plazo del Concejo", async function () {
    const { catalogo, c1, c2, c3 } = await loadFixture(desplegarFixture);
    await catalogo.connect(c1).proponerCiudadano("ipfs://cid1", 100, 0, POOL_A);
    await catalogo.connect(c1).avalar(1);
    await catalogo.connect(c2).avalar(1);
    await catalogo.connect(c3).avalar(1);

    await expect(catalogo.aprobarPorSilencio(1)).to.be.revertedWithCustomError(
      catalogo,
      "PlazoNoVencido"
    );

    // El plazo por defecto es 7 días.
    await time.increase(7 * 24 * 60 * 60 + 1);
    await catalogo.aprobarPorSilencio(1);
    expect(await catalogo.estadoDe(1)).to.equal(VALIDADO);
  });

  it("proponerInstitucional entra directo a Validado (solo Concejo)", async function () {
    const { catalogo, concejo } = await loadFixture(desplegarFixture);
    await catalogo.connect(concejo).proponerInstitucional("ipfs://inst", 500, 0, POOL_A);
    expect(await catalogo.estadoDe(1)).to.equal(VALIDADO);
  });
});
