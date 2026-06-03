// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./ICiudadania.sol";
import "./CatalogoProyectos.sol";
import "./Ejecucion.sol";

interface IOraculoB {
    function periodoActual() external view returns (uint256);
    function montoPoolB(uint256 periodo) external view returns (uint256);
}

/// @title PoolB - Pool comunitario igualitario ("plata de todos, decision de todos")
/// @author TP Final Ethereum Developer Pack - ETH Kipu
/// @notice El Municipio aporta un 2% del presupuesto a este pool, que se divide en
///         cuotas IGUALES entre todos los ciudadanos verificados (contribuyentes o no).
///         Cada uno asigna su cuota igualitaria a proyectos de obra publica.
/// @dev La cuota = montoPoolB / totalCiudadanosActivos(). Aplica CEI, ReentrancyGuard y Pausable.
///      Nota: el traspaso de "cuotas caducadas" del Pool A queda fuera de alcance del MVP
///      (su deteccion exacta es dificil de hacer puramente on-chain).
contract PoolB is AccessControl, ReentrancyGuard, Pausable {
    bytes32 public constant MUNICIPIO_ROLE = keccak256("MUNICIPIO_ROLE");

    ICiudadania public immutable ciudadania;
    IOraculoB public immutable oraculo;
    CatalogoProyectos public immutable catalogo;
    Ejecucion public immutable ejecucion;
    IERC20 public immutable stablecoin;

    /// @dev periodo => ciudadano => ya asigno su cuota igualitaria.
    mapping(uint256 => mapping(address => bool)) public yaAsigno;
    /// @dev periodo => proyectoId => acumulado.
    mapping(uint256 => mapping(uint256 => uint256)) public acumuladoProyecto;
    mapping(uint256 => bool) public periodoCerrado;
    mapping(uint256 => uint256[]) public proyectosConAsignacion;
    mapping(uint256 => mapping(uint256 => bool)) private _registrado;
    /// @dev periodo => proyectoId => asignador => monto aportado (para devolucion si falla).
    mapping(uint256 => mapping(uint256 => mapping(address => uint256))) public aporteEn;
    /// @dev periodo => proyectoId => fallo en financiacion (no alcanzo umbral): habilita
    ///      la devolucion desde este Pool. NO se marca para fallos en etapa de ejecucion.
    mapping(uint256 => mapping(uint256 => bool)) public fallidoEnFinanciacion;

    event CuotaAsignada(address indexed ciudadano, uint256 indexed periodo, uint256 indexed proyectoId, uint256 monto);
    event PeriodoCerrado(uint256 indexed periodo);
    event ProyectoFinanciado(uint256 indexed periodo, uint256 indexed proyectoId, uint256 total);
    event ProyectoFallido(uint256 indexed periodo, uint256 indexed proyectoId, uint256 total);
    event DevolucionReclamada(address indexed asignador, uint256 indexed periodo, uint256 indexed proyectoId, uint256 monto);

    error SinSBT();
    error YaAsignaste();
    error LongitudesNoCoinciden();
    error PorcentajesNoSuman100();
    error PeriodoYaCerrado();
    error ProyectoNoVigente(uint256 proyectoId);
    error SinCiudadanos();
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
        oraculo = IOraculoB(oraculo_);
        catalogo = CatalogoProyectos(catalogo_);
        ejecucion = Ejecucion(ejecucion_);
        stablecoin = IERC20(stablecoin_);
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(MUNICIPIO_ROLE, admin);
    }

    /// @notice Cuota igualitaria del periodo = montoPoolB / ciudadanos activos.
    function cuotaIgualitaria(uint256 periodo) public view returns (uint256) {
        uint256 activos = ciudadania.totalCiudadanosActivos();
        if (activos == 0) revert SinCiudadanos();
        return oraculo.montoPoolB(periodo) / activos;
    }

    /// @notice Asigna la cuota igualitaria del periodo actual entre proyectos.
    function asignar(uint256[] calldata proyectoIds, uint256[] calldata porcentajes)
        external
        nonReentrant
        whenNotPaused
    {
        if (!ciudadania.esCiudadano(msg.sender)) revert SinSBT();
        if (proyectoIds.length != porcentajes.length) revert LongitudesNoCoinciden();

        uint256 periodo = oraculo.periodoActual();
        if (periodoCerrado[periodo]) revert PeriodoYaCerrado();
        if (yaAsigno[periodo][msg.sender]) revert YaAsignaste();

        uint256 sumaPct;
        for (uint256 i = 0; i < porcentajes.length; i++) {
            sumaPct += porcentajes[i];
        }
        if (sumaPct != 100) revert PorcentajesNoSuman100();

        uint256 cuota = cuotaIgualitaria(periodo);

        // Effects
        yaAsigno[periodo][msg.sender] = true;
        for (uint256 i = 0; i < proyectoIds.length; i++) {
            uint256 pid = proyectoIds[i];
            if (catalogo.estadoDe(pid) != CatalogoProyectos.Estado.Vigente) {
                revert ProyectoNoVigente(pid);
            }
            uint256 monto = (cuota * porcentajes[i]) / 100;
            acumuladoProyecto[periodo][pid] += monto;
            aporteEn[periodo][pid][msg.sender] += monto;
            if (!_registrado[periodo][pid]) {
                _registrado[periodo][pid] = true;
                proyectosConAsignacion[periodo].push(pid);
            }
            emit CuotaAsignada(msg.sender, periodo, pid, monto);
        }

        // Interaction
        require(stablecoin.transferFrom(msg.sender, address(this), cuota), "cobro de cuota fallido");
    }

    /// @notice Cierra el periodo evaluando umbrales (mismo patron que PoolA).
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
                // Habilita la devolucion Pull-over-Push desde este mismo Pool.
                fallidoEnFinanciacion[periodo][pid] = true;
                emit ProyectoFallido(periodo, pid, total);
            }
        }
        emit PeriodoCerrado(periodo);
    }

    /// @notice Un asignador reclama su aporte a un proyecto que NO alcanzo el umbral
    ///         (quedo Fallido al cerrar el periodo). Pull-over-Push.
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

    function proyectosDelPeriodo(uint256 periodo) external view returns (uint256[] memory) {
        return proyectosConAsignacion[periodo];
    }

    function pausar() external onlyRole(MUNICIPIO_ROLE) { _pause(); }
    function despausar() external onlyRole(MUNICIPIO_ROLE) { _unpause(); }
}
