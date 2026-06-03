// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./ICiudadania.sol";
import "./CatalogoProyectos.sol";
import "./Ejecucion.sol";

/// @title OraculoFiscalMinimo - Interfaz reducida del oraculo para PoolA
interface IOraculoFiscal {
    function periodoActual() external view returns (uint256);
    function cuotaPoolA(address ciudadano, uint256 periodo) external view returns (uint256);
}

/// @title PoolA - Pool individual asignable ("tu plata, tu destino")
/// @author TP Final Ethereum Developer Pack - ETH Kipu
/// @notice Cada contribuyente asigna su cuota (2% de su aporte propio) a proyectos
///         sectoriales, repartiendola porcentualmente entre uno o N proyectos.
///         Asignar es el destino: no hay votacion adicional.
/// @dev La cuota disponible la dicta el OraculoFiscal por periodo. Aplica
///      Checks-Effects-Interactions, ReentrancyGuard y Pausable.
contract PoolA is AccessControl, ReentrancyGuard, Pausable {
    bytes32 public constant MUNICIPIO_ROLE = keccak256("MUNICIPIO_ROLE");

    ICiudadania public immutable ciudadania;
    IOraculoFiscal public immutable oraculo;
    CatalogoProyectos public immutable catalogo;
    Ejecucion public immutable ejecucion;
    IERC20 public immutable stablecoin;

    /// @dev periodo => ciudadano => total ya asignado por el (en stablecoin).
    mapping(uint256 => mapping(address => uint256)) public asignadoPor;
    /// @dev periodo => proyectoId => total acumulado de asignaciones.
    mapping(uint256 => mapping(uint256 => uint256)) public acumuladoProyecto;
    /// @dev periodo => proyectoId => asignador => monto (para devolucion si falla).
    mapping(uint256 => mapping(uint256 => mapping(address => uint256))) public aporteEn;
    /// @dev periodo => proyectoId => fallo en financiacion (no alcanzo umbral): habilita
    ///      la devolucion desde este Pool. NO se marca para fallos en etapa de ejecucion.
    mapping(uint256 => mapping(uint256 => bool)) public fallidoEnFinanciacion;
    /// @dev periodo => si ya se cerro.
    mapping(uint256 => bool) public periodoCerrado;
    /// @dev periodo => lista de proyectos que recibieron asignacion (para iterar al cerrar).
    mapping(uint256 => uint256[]) public proyectosConAsignacion;
    mapping(uint256 => mapping(uint256 => bool)) private _proyectoRegistrado;

    event CuotaAsignada(address indexed ciudadano, uint256 indexed periodo, uint256 indexed proyectoId, uint256 monto);
    event PeriodoCerrado(uint256 indexed periodo);
    event ProyectoFinanciado(uint256 indexed periodo, uint256 indexed proyectoId, uint256 total);
    event ProyectoFallido(uint256 indexed periodo, uint256 indexed proyectoId, uint256 total);
    event DevolucionReclamada(address indexed asignador, uint256 indexed periodo, uint256 indexed proyectoId, uint256 monto);

    error SinSBT();
    error NoContribuyente();
    error LongitudesNoCoinciden();
    error PorcentajesNoSuman100();
    error CuotaInsuficiente(uint256 disponible, uint256 solicitado);
    error PeriodoYaCerrado();
    error ProyectoNoVigente(uint256 proyectoId);
    error ProyectoNoFallido(uint256 proyectoId);
    error NadaQueReclamar();

    constructor(
        address ciudadania_,
        address oraculo_,
        address catalogo_,
        address ejecucion_,
        address stablecoin_,
        address admin
    ) {
        ciudadania = ICiudadania(ciudadania_);
        oraculo = IOraculoFiscal(oraculo_);
        catalogo = CatalogoProyectos(catalogo_);
        ejecucion = Ejecucion(ejecucion_);
        stablecoin = IERC20(stablecoin_);
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(MUNICIPIO_ROLE, admin);
    }

    /// @notice Asigna la cuota del periodo actual repartida porcentualmente entre proyectos.
    /// @param proyectoIds Lista de proyectos destino.
    /// @param porcentajes Porcentaje (en base 100) para cada proyecto. Debe sumar 100.
    /// @dev El ciudadano debe haber aprobado el transferFrom de su cuota a este contrato.
    ///      Modificable durante el periodo (puede reasignar llamando de nuevo no esta
    ///      soportado en esta version minima; se asigna una vez por simplicidad del MVP).
    function asignar(uint256[] calldata proyectoIds, uint256[] calldata porcentajes)
        external
        nonReentrant
        whenNotPaused
    {
        // Checks
        if (!ciudadania.esCiudadano(msg.sender)) revert SinSBT();
        if (!ciudadania.esContribuyente(msg.sender)) revert NoContribuyente();
        if (proyectoIds.length != porcentajes.length) revert LongitudesNoCoinciden();

        uint256 periodo = oraculo.periodoActual();
        if (periodoCerrado[periodo]) revert PeriodoYaCerrado();

        uint256 sumaPct;
        for (uint256 i = 0; i < porcentajes.length; i++) {
            sumaPct += porcentajes[i];
        }
        if (sumaPct != 100) revert PorcentajesNoSuman100();

        uint256 cuota = oraculo.cuotaPoolA(msg.sender, periodo);
        uint256 yaAsignado = asignadoPor[periodo][msg.sender];
        if (yaAsignado + cuota < yaAsignado) revert CuotaInsuficiente(cuota, cuota); // guard
        // En esta version, cada llamada asigna la cuota completa del periodo.
        if (yaAsignado != 0) revert CuotaInsuficiente(0, cuota);

        // Effects
        asignadoPor[periodo][msg.sender] = cuota;
        for (uint256 i = 0; i < proyectoIds.length; i++) {
            uint256 pid = proyectoIds[i];
            if (catalogo.estadoDe(pid) != CatalogoProyectos.Estado.Vigente) {
                revert ProyectoNoVigente(pid);
            }
            uint256 monto = (cuota * porcentajes[i]) / 100;
            acumuladoProyecto[periodo][pid] += monto;
            aporteEn[periodo][pid][msg.sender] += monto;
            if (!_proyectoRegistrado[periodo][pid]) {
                _proyectoRegistrado[periodo][pid] = true;
                proyectosConAsignacion[periodo].push(pid);
            }
            emit CuotaAsignada(msg.sender, periodo, pid, monto);
        }

        // Interaction
        require(stablecoin.transferFrom(msg.sender, address(this), cuota), "cobro de cuota fallido");
    }

    /// @notice Cierra el periodo: evalua cada proyecto contra su umbral, dispara
    ///         Financiado/Fallido y mueve fondos de los financiados a Ejecucion.
    /// @param proveedoresPorProyecto Direcciones de proveedor para los financiados (institucional).
    /// @param plazoEjecucion Plazo de ejecucion comun para los financiados.
    function cerrarPeriodo(
        uint256 periodo,
        uint256[] calldata proyectoIds,
        address[] calldata proveedoresPorProyecto,
        uint64 plazoEjecucion
    ) external onlyRole(MUNICIPIO_ROLE) {
        if (periodoCerrado[periodo]) revert PeriodoYaCerrado();
        if (proyectoIds.length != proveedoresPorProyecto.length) revert LongitudesNoCoinciden();
        periodoCerrado[periodo] = true;

        for (uint256 i = 0; i < proyectoIds.length; i++) {
            uint256 pid = proyectoIds[i];
            uint256 total = acumuladoProyecto[periodo][pid];
            uint256 umbral = catalogo.umbralDe(pid);

            if (total >= umbral && total > 0) {
                catalogo.marcarEstado(pid, CatalogoProyectos.Estado.Financiado);
                stablecoin.approve(address(ejecucion), total);
                ejecucion.recibirFondos(pid, total, proveedoresPorProyecto[i], plazoEjecucion);
                emit ProyectoFinanciado(periodo, pid, total);
            } else {
                catalogo.marcarEstado(pid, CatalogoProyectos.Estado.Fallido);
                // Habilita la devolucion Pull-over-Push desde este mismo Pool: los
                // fondos del proyecto fallido nunca salieron de aca.
                fallidoEnFinanciacion[periodo][pid] = true;
                emit ProyectoFallido(periodo, pid, total);
            }
        }
        emit PeriodoCerrado(periodo);
    }

    /// @notice Un asignador reclama su aporte a un proyecto que NO alcanzo el umbral
    ///         (quedo Fallido al cerrar el periodo). Pull-over-Push: el contrato no
    ///         empuja fondos a N direcciones; cada uno reclama lo suyo.
    /// @dev Los fondos de los proyectos fallidos nunca salieron de este Pool (solo los
    ///      financiados se transfieren a Ejecucion). Checks-Effects-Interactions + nonReentrant.
    function reclamarDevolucion(uint256 periodo, uint256 proyectoId)
        external
        nonReentrant
        whenNotPaused
    {
        // Checks
        if (!fallidoEnFinanciacion[periodo][proyectoId]) revert ProyectoNoFallido(proyectoId);
        uint256 monto = aporteEn[periodo][proyectoId][msg.sender];
        if (monto == 0) revert NadaQueReclamar();

        // Effects
        aporteEn[periodo][proyectoId][msg.sender] = 0;
        // Interaction
        require(stablecoin.transfer(msg.sender, monto), "devolucion fallida");
        emit DevolucionReclamada(msg.sender, periodo, proyectoId, monto);
    }

    /// @notice Devuelve los proyectos que recibieron asignacion en un periodo.
    function proyectosDelPeriodo(uint256 periodo) external view returns (uint256[] memory) {
        return proyectosConAsignacion[periodo];
    }

    function pausar() external onlyRole(MUNICIPIO_ROLE) { _pause(); }
    function despausar() external onlyRole(MUNICIPIO_ROLE) { _unpause(); }
}
