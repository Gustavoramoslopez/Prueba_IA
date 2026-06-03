// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "./ICiudadania.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title CatalogoProyectos - Registro y ciclo de vida de los proyectos
/// @author TP Final Ethereum Developer Pack - ETH Kipu
/// @notice Mantiene el catalogo de proyectos y gobierna sus transiciones de estado.
///         No custodia fondos de asignacion (eso es de PoolA/PoolB/Ejecucion); solo
///         conoce estados, umbrales, plazos y metadatos.
/// @dev Aplica el patron State Machine del Modulo 3: cada proyecto transita por
///      estados validos y cada transicion valida el estado de origen.
contract CatalogoProyectos is AccessControl, Pausable {
    bytes32 public constant CONCEJO_ROLE = keccak256("CONCEJO_ROLE");
    bytes32 public constant MUNICIPIO_ROLE = keccak256("MUNICIPIO_ROLE");
    /// @notice Rol otorgado a los contratos PoolA, PoolB y Ejecucion para mover estados.
    bytes32 public constant POOL_ROLE = keccak256("POOL_ROLE");

    /// @notice Estados del ciclo de vida (patron State Machine).
    enum Estado {
        Propuesto,   // recien creado por un ciudadano, juntando avales
        Avalado,     // junto avales suficientes, espera validacion del Concejo
        Validado,    // factible: entra al catalogo activo
        Vigente,     // abierto a asignacion en el periodo actual
        Financiado,  // alcanzo umbral: pasa a Ejecucion
        Ejecutado,   // fondos liberados al proveedor
        Fallido,     // no alcanzo umbral: habilita devolucion
        Devuelto     // devoluciones completadas
    }

    /// @notice A que pool puede financiarse un proyecto.
    enum Pool { A, B, Ambos }

    struct Proyecto {
        address proponente;
        string cidIPFS;             // descripcion larga + fotos (off-chain)
        uint256 umbral;             // minimo en stablecoin para financiarse
        uint64 plazo;               // deadline de financiamiento (timestamp)
        Pool elegiblePara;
        Estado estado;
        uint256 avales;
        uint256 depositoReembolsable;
        uint64 creadoEn;
    }

    ICiudadania public immutable ciudadania;
    IERC20 public immutable stablecoin;

    /// @notice Minimo de avales para que una propuesta ciudadana pase a Avalado.
    uint256 public minimoAvales;
    /// @notice Deposito reembolsable exigido al proponente ciudadano (anti-spam).
    uint256 public depositoPropuesta;
    /// @notice Plazo que tiene el Concejo para validar; vencido, se aprueba por silencio.
    uint64 public plazoValidacionConcejo;

    uint256 public siguienteProyectoId = 1;
    mapping(uint256 => Proyecto) public proyectos;
    /// @dev proyectoId => votante => ya avalo (un SBT, un aval).
    mapping(uint256 => mapping(address => bool)) public yaAvalo;
    /// @dev proyectoId => timestamp en que paso a Avalado (para silencio positivo).
    mapping(uint256 => uint64) public avaladoEn;

    event ProyectoPropuesto(uint256 indexed id, address indexed proponente, Pool elegiblePara);
    event ProyectoAvalado(uint256 indexed id, uint256 avales);
    event ProyectoValidado(uint256 indexed id, bool porSilencio);
    event ProyectoRechazado(uint256 indexed id);
    event EstadoCambiado(uint256 indexed id, Estado nuevoEstado);

    error SinSBT();
    error EstadoInvalido(Estado actual);
    error YaAvalaste();
    error AvalesInsuficientes();
    error PlazoNoVencido();
    error MontoDepositoIncorrecto();

    modifier soloCiudadano() {
        if (!ciudadania.esCiudadano(msg.sender)) revert SinSBT();
        _;
    }

    /// @param ciudadania_ Direccion del padron CiudadaniaSBT.
    /// @param stablecoin_ Direccion de la stablecoin (mock en MVP).
    /// @param admin Direccion administradora (Municipio).
    constructor(address ciudadania_, address stablecoin_, address admin) {
        ciudadania = ICiudadania(ciudadania_);
        stablecoin = IERC20(stablecoin_);
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(MUNICIPIO_ROLE, admin);
        minimoAvales = 3;
        depositoPropuesta = 0;
        plazoValidacionConcejo = 7 days;
    }

    // ----------------------------------------------------------------
    // Pista ciudadana
    // ----------------------------------------------------------------

    /// @notice Un ciudadano propone un proyecto. Requiere SBT y deposito reembolsable.
    /// @dev Aplica Checks-Effects-Interactions: validaciones, luego estado, luego transferencia.
    function proponerCiudadano(
        string calldata cidIPFS,
        uint256 umbral,
        uint64 plazo,
        Pool elegiblePara
    ) external whenNotPaused soloCiudadano returns (uint256 id) {
        // Checks
        // (el deposito se cobra via transferFrom; el ciudadano debe haber aprobado antes)
        // Effects
        id = siguienteProyectoId++;
        proyectos[id] = Proyecto({
            proponente: msg.sender,
            cidIPFS: cidIPFS,
            umbral: umbral,
            plazo: plazo,
            elegiblePara: elegiblePara,
            estado: Estado.Propuesto,
            avales: 0,
            depositoReembolsable: depositoPropuesta,
            creadoEn: uint64(block.timestamp)
        });
        // Interaction
        if (depositoPropuesta > 0) {
            require(
                stablecoin.transferFrom(msg.sender, address(this), depositoPropuesta),
                "deposito fallido"
            );
        }
        emit ProyectoPropuesto(id, msg.sender, elegiblePara);
    }

    /// @notice Un ciudadano avala una propuesta. Un SBT, un aval.
    function avalar(uint256 id) external whenNotPaused soloCiudadano {
        Proyecto storage p = proyectos[id];
        if (p.estado != Estado.Propuesto) revert EstadoInvalido(p.estado);
        if (yaAvalo[id][msg.sender]) revert YaAvalaste();

        yaAvalo[id][msg.sender] = true;
        p.avales += 1;
        emit ProyectoAvalado(id, p.avales);

        if (p.avales >= minimoAvales) {
            p.estado = Estado.Avalado;
            avaladoEn[id] = uint64(block.timestamp);
            emit EstadoCambiado(id, Estado.Avalado);
        }
    }

    // ----------------------------------------------------------------
    // Validacion del Concejo (con silencio positivo)
    // ----------------------------------------------------------------

    /// @notice El Concejo valida (o rechaza) la factibilidad tecnico-legal.
    /// @param id Proyecto a validar.
    /// @param aprobar true para validar, false para rechazar (devuelve deposito).
    function validarFactibilidad(uint256 id, bool aprobar)
        external
        whenNotPaused
        onlyRole(CONCEJO_ROLE)
    {
        Proyecto storage p = proyectos[id];
        if (p.estado != Estado.Avalado) revert EstadoInvalido(p.estado);

        if (aprobar) {
            p.estado = Estado.Validado;
            emit ProyectoValidado(id, false);
            emit EstadoCambiado(id, Estado.Validado);
        } else {
            p.estado = Estado.Fallido;
            emit ProyectoRechazado(id);
            emit EstadoCambiado(id, Estado.Fallido);
            _devolverDeposito(p);
        }
    }

    /// @notice Aprobacion por silencio positivo: si el Concejo no validó en plazo,
    ///         cualquiera puede disparar el paso a Validado.
    function aprobarPorSilencio(uint256 id) external whenNotPaused {
        Proyecto storage p = proyectos[id];
        if (p.estado != Estado.Avalado) revert EstadoInvalido(p.estado);
        if (block.timestamp < avaladoEn[id] + plazoValidacionConcejo) revert PlazoNoVencido();

        p.estado = Estado.Validado;
        emit ProyectoValidado(id, true);
        emit EstadoCambiado(id, Estado.Validado);
    }

    // ----------------------------------------------------------------
    // Pista institucional
    // ----------------------------------------------------------------

    /// @notice El Concejo o Municipio proponen un proyecto tecnico, entra directo a Validado.
    function proponerInstitucional(
        string calldata cidIPFS,
        uint256 umbral,
        uint64 plazo,
        Pool elegiblePara
    ) external whenNotPaused onlyRole(CONCEJO_ROLE) returns (uint256 id) {
        id = siguienteProyectoId++;
        proyectos[id] = Proyecto({
            proponente: msg.sender,
            cidIPFS: cidIPFS,
            umbral: umbral,
            plazo: plazo,
            elegiblePara: elegiblePara,
            estado: Estado.Validado,
            avales: 0,
            depositoReembolsable: 0,
            creadoEn: uint64(block.timestamp)
        });
        emit ProyectoPropuesto(id, msg.sender, elegiblePara);
        emit ProyectoValidado(id, false);
    }

    // ----------------------------------------------------------------
    // Activacion y transiciones disparadas por los Pools / Ejecucion
    // ----------------------------------------------------------------

    /// @notice Activa un proyecto validado para el periodo de asignacion en curso.
    function activarProyecto(uint256 id) external onlyRole(MUNICIPIO_ROLE) {
        Proyecto storage p = proyectos[id];
        if (p.estado != Estado.Validado) revert EstadoInvalido(p.estado);
        p.estado = Estado.Vigente;
        emit EstadoCambiado(id, Estado.Vigente);
    }

    /// @notice La llaman PoolA/PoolB/Ejecucion para mover el estado segun resultado.
    /// @dev Solo POOL_ROLE. Valida transiciones permitidas.
    function marcarEstado(uint256 id, Estado nuevo) external onlyRole(POOL_ROLE) {
        Proyecto storage p = proyectos[id];
        Estado actual = p.estado;

        bool valido =
            (actual == Estado.Vigente && (nuevo == Estado.Financiado || nuevo == Estado.Fallido)) ||
            (actual == Estado.Financiado && (nuevo == Estado.Ejecutado || nuevo == Estado.Fallido)) ||
            (actual == Estado.Fallido && nuevo == Estado.Devuelto);

        if (!valido) revert EstadoInvalido(actual);
        p.estado = nuevo;
        emit EstadoCambiado(id, nuevo);
    }

    // ----------------------------------------------------------------
    // Vistas y administracion
    // ----------------------------------------------------------------

    function estadoDe(uint256 id) external view returns (Estado) {
        return proyectos[id].estado;
    }

    function umbralDe(uint256 id) external view returns (uint256) {
        return proyectos[id].umbral;
    }

    function poolElegible(uint256 id) external view returns (Pool) {
        return proyectos[id].elegiblePara;
    }

    function setParametros(uint256 _minimoAvales, uint256 _deposito, uint64 _plazoValidacion)
        external
        onlyRole(MUNICIPIO_ROLE)
    {
        minimoAvales = _minimoAvales;
        depositoPropuesta = _deposito;
        plazoValidacionConcejo = _plazoValidacion;
    }

    function pausar() external onlyRole(MUNICIPIO_ROLE) { _pause(); }
    function despausar() external onlyRole(MUNICIPIO_ROLE) { _unpause(); }

    function _devolverDeposito(Proyecto storage p) private {
        uint256 dep = p.depositoReembolsable;
        if (dep > 0) {
            p.depositoReembolsable = 0;
            require(stablecoin.transfer(p.proponente, dep), "reembolso fallido");
        }
    }
}
