const { expect } = require("chai");
const { ethers } = require("hardhat");
const { loadFixture, time } = require("@nomicfoundation/hardhat-network-helpers");

// Test de integración end-to-end del sistema con PoolA:
//  - propuesta institucional -> Validado -> Vigente
//  - asignación de cuotas por ciudadanos contribuyentes
//  - cierre de período: un proyecto se financia (>= umbral) y otro falla (< umbral)
//  - liberación por multisig 2-de-3 (Ejecucion)
//  - devolución Pull-over-Push desde el propio Pool para el proyecto fallido (Modelo A)
describe("Integración: PoolA + Ejecucion + devolución", function () {
  // Estados
  const FINANCIADO = 4n;
  const EJECUTADO = 5n;
  const FALLIDO = 6n;
  const POOL_A = 0;

  const u = (n) => ethers.parseEther(n.toString()); // unidades de stablecoin (18 dec)

  async function desplegarFixture() {
    const [municipio, concejo, c1, c2, c3, proveedor, firmante1, firmante2] =
      await ethers.getSigners();

    const Stable = await ethers.getContractFactory("StablecoinMock");
    const stable = await Stable.deploy(municipio.address);
    await stable.waitForDeployment();

    const SBT = await ethers.getContractFactory("CiudadaniaSBT");
    const sbt = await SBT.deploy(municipio.address);
    await sbt.waitForDeployment();

    const Oraculo = await ethers.getContractFactory("OraculoFiscal");
    const oraculo = await Oraculo.deploy(municipio.address);
    await oraculo.waitForDeployment();

    const Catalogo = await ethers.getContractFactory("CatalogoProyectos");
    const catalogo = await Catalogo.deploy(
      await sbt.getAddress(),
      await stable.getAddress(),
      municipio.address
    );
    await catalogo.waitForDeployment();

    const Ejecucion = await ethers.getContractFactory("Ejecucion");
    const ejecucion = await Ejecucion.deploy(
      await stable.getAddress(),
      await catalogo.getAddress(),
      municipio.address
    );
    await ejecucion.waitForDeployment();

    const PoolA = await ethers.getContractFactory("PoolA");
    const poolA = await PoolA.deploy(
      await sbt.getAddress(),
      await oraculo.getAddress(),
      await catalogo.getAddress(),
      await ejecucion.getAddress(),
      await stable.getAddress(),
      municipio.address
    );
    await poolA.waitForDeployment();

    // --- Cableado de roles ---
    const CONCEJO_ROLE = await catalogo.CONCEJO_ROLE();
    const CAT_POOL_ROLE = await catalogo.POOL_ROLE();
    await catalogo.connect(municipio).grantRole(CONCEJO_ROLE, concejo.address);
    // PoolA y Ejecucion mueven estados en el catálogo:
    await catalogo.connect(municipio).grantRole(CAT_POOL_ROLE, await poolA.getAddress());
    await catalogo.connect(municipio).grantRole(CAT_POOL_ROLE, await ejecucion.getAddress());

    // PoolA deposita fondos en Ejecucion:
    const EJ_POOL_ROLE = await ejecucion.POOL_ROLE();
    await ejecucion.connect(municipio).grantRole(EJ_POOL_ROLE, await poolA.getAddress());
    // Firmantes del multisig:
    const FIRMANTE_ROLE = await ejecucion.FIRMANTE_ROLE();
    await ejecucion.connect(municipio).grantRole(FIRMANTE_ROLE, firmante1.address);
    await ejecucion.connect(municipio).grantRole(FIRMANTE_ROLE, firmante2.address);

    // --- Padrón: 3 ciudadanos contribuyentes ---
    for (const c of [c1, c2, c3]) {
      await sbt.connect(municipio).emitirSBT(c.address, true, 1);
    }

    // --- Stablecoin: cada ciudadano recibe 100 y aprueba al PoolA ---
    for (const c of [c1, c2, c3]) {
      await stable.connect(municipio).mint(c.address, u(100));
      await stable.connect(c).approve(await poolA.getAddress(), u(100));
    }

    // --- Período fiscal con cuotas de PoolA = 100 por ciudadano ---
    await oraculo
      .connect(municipio)
      .abrirPeriodo(u(1000), u(0), ethers.ZeroHash); // período 1
    await oraculo
      .connect(municipio)
      .publicarCuotasPoolA(1, [c1.address, c2.address, c3.address], [u(100), u(100), u(100)]);

    // --- Dos proyectos institucionales, activados a Vigente ---
    // P1 (id=1) umbral 150  -> se financiará (c1+c2 = 200)
    // P2 (id=2) umbral 500  -> fallará (c3 = 100)
    await catalogo.connect(concejo).proponerInstitucional("ipfs://p1", u(150), 0, POOL_A);
    await catalogo.connect(concejo).proponerInstitucional("ipfs://p2", u(500), 0, POOL_A);
    await catalogo.connect(municipio).activarProyecto(1);
    await catalogo.connect(municipio).activarProyecto(2);

    return {
      stable, sbt, oraculo, catalogo, ejecucion, poolA,
      municipio, concejo, c1, c2, c3, proveedor, firmante1, firmante2,
    };
  }

  it("flujo completo: financia P1, falla P2, libera por multisig y devuelve a quien aportó", async function () {
    const { stable, catalogo, ejecucion, poolA, municipio, c1, c2, c3, proveedor, firmante1, firmante2 } =
      await loadFixture(desplegarFixture);

    // Asignaciones (cada ciudadano asigna su cuota completa una vez)
    await poolA.connect(c1).asignar([1], [100]);
    await poolA.connect(c2).asignar([1], [100]);
    await poolA.connect(c3).asignar([2], [100]);

    // El PoolA custodia las 3 cuotas
    expect(await stable.balanceOf(await poolA.getAddress())).to.equal(u(300));

    // Cierre de período
    const plazo = (await time.latest()) + 30 * 24 * 60 * 60;
    await poolA
      .connect(municipio)
      .cerrarPeriodo(1, [1, 2], [proveedor.address, proveedor.address], plazo);

    expect(await catalogo.estadoDe(1)).to.equal(FINANCIADO);
    expect(await catalogo.estadoDe(2)).to.equal(FALLIDO);
    // P1 (200) se movió a Ejecucion; P2 (100) quedó en el PoolA para devolución
    expect(await stable.balanceOf(await ejecucion.getAddress())).to.equal(u(200));
    expect(await stable.balanceOf(await poolA.getAddress())).to.equal(u(100));

    // Multisig 2-de-3 libera P1 al proveedor
    await ejecucion.connect(firmante1).firmarLiberacion(1);
    await ejecucion.connect(firmante2).firmarLiberacion(1);

    expect(await catalogo.estadoDe(1)).to.equal(EJECUTADO);
    expect(await stable.balanceOf(proveedor.address)).to.equal(u(200));
    expect(await stable.balanceOf(await ejecucion.getAddress())).to.equal(u(0));

    // c3 reclama su aporte al proyecto fallido (Pull-over-Push desde el Pool)
    await expect(poolA.connect(c3).reclamarDevolucion(1, 2))
      .to.emit(poolA, "DevolucionReclamada")
      .withArgs(c3.address, 1n, 2n, u(100));

    expect(await stable.balanceOf(c3.address)).to.equal(u(100));
    expect(await stable.balanceOf(await poolA.getAddress())).to.equal(u(0));
  });

  it("no se puede reclamar de un proyecto financiado", async function () {
    const { poolA, catalogo, municipio, c1, c2, c3, proveedor } = await loadFixture(desplegarFixture);
    await poolA.connect(c1).asignar([1], [100]);
    await poolA.connect(c2).asignar([1], [100]);
    await poolA.connect(c3).asignar([2], [100]);

    const plazo = (await time.latest()) + 30 * 24 * 60 * 60;
    await poolA
      .connect(municipio)
      .cerrarPeriodo(1, [1, 2], [proveedor.address, proveedor.address], plazo);

    // P1 quedó financiado -> no marcado como fallidoEnFinanciacion
    await expect(
      poolA.connect(c1).reclamarDevolucion(1, 1)
    ).to.be.revertedWithCustomError(poolA, "ProyectoNoFallido");
  });

  it("no se puede reclamar dos veces", async function () {
    const { poolA, municipio, c1, c2, c3, proveedor } = await loadFixture(desplegarFixture);
    await poolA.connect(c1).asignar([1], [100]);
    await poolA.connect(c2).asignar([1], [100]);
    await poolA.connect(c3).asignar([2], [100]);

    const plazo = (await time.latest()) + 30 * 24 * 60 * 60;
    await poolA
      .connect(municipio)
      .cerrarPeriodo(1, [1, 2], [proveedor.address, proveedor.address], plazo);

    await poolA.connect(c3).reclamarDevolucion(1, 2);
    await expect(
      poolA.connect(c3).reclamarDevolucion(1, 2)
    ).to.be.revertedWithCustomError(poolA, "NadaQueReclamar");
  });

  it("PoolA: rechaza no contribuyentes y porcentajes que no suman 100", async function () {
    const { sbt, poolA, oraculo, stable, municipio, c1 } = await loadFixture(desplegarFixture);

    // Ciudadano NO contribuyente
    const noContrib = (await ethers.getSigners())[9];
    await sbt.connect(municipio).emitirSBT(noContrib.address, false, 0);
    await stable.connect(municipio).mint(noContrib.address, u(100));
    await stable.connect(noContrib).approve(await poolA.getAddress(), u(100));
    await oraculo.connect(municipio).publicarCuotasPoolA(1, [noContrib.address], [u(100)]);

    await expect(
      poolA.connect(noContrib).asignar([1], [100])
    ).to.be.revertedWithCustomError(poolA, "NoContribuyente");

    await expect(
      poolA.connect(c1).asignar([1], [90])
    ).to.be.revertedWithCustomError(poolA, "PorcentajesNoSuman100");
  });
});
