// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./ICiudadania.sol";

/// @notice Interfaz minima para otorgar/revocar el rol de auditor en el SBT.
interface ICiudadaniaRoles {
    function grantRole(bytes32 role, address account) external;
    function revokeRole(bytes32 role, address account) external;
    function AUDITOR_ROLE() external view returns (bytes32);
}

/// @title GobernanzaAuditor - Eleccion semestral on-chain del auditor ciudadano
/// @author TP Final Ethereum Developer Pack - ETH Kipu
/// @notice Gestiona la postulacion y votacion (1 SBT = 1 voto) del auditor ciudadano
///         electo, que luego firma las liberaciones de hitos en el contrato Ejecucion.
/// @dev Al cerrar la eleccion, otorga el AUDITOR_ROLE al ganador en el padron SBT y
///      revoca al anterior. Mandato semestral sin reeleccion inmediata.
contract GobernanzaAuditor is AccessControl {
    bytes32 public constant MUNICIPIO_ROLE = keccak256("MUNICIPIO_ROLE");

    ICiudadania public immutable ciudadania;
    ICiudadaniaRoles public immutable ciudadaniaRoles;

    enum FaseEleccion { Cerrada, Abierta }
    FaseEleccion public fase;

    uint256 public eleccionActual;
    address public auditorVigente;

    /// @dev eleccion => candidato => votos.
    mapping(uint256 => mapping(address => uint256)) public votos;
    /// @dev eleccion => votante => ya voto.
    mapping(uint256 => mapping(address => bool)) public yaVoto;
    /// @dev eleccion => candidato => esta postulado.
    mapping(uint256 => mapping(address => bool)) public postulado;
    /// @dev eleccion => lider provisorio.
    mapping(uint256 => address) public lider;
    mapping(uint256 => uint256) public votosLider;
    /// @dev eleccion => quien fue auditor en el mandato previo (para evitar reeleccion inmediata).
    mapping(uint256 => address) public auditorPrevio;

    event EleccionAbierta(uint256 indexed eleccion);
    event CandidatoPostulado(uint256 indexed eleccion, address indexed candidato);
    event VotoEmitido(uint256 indexed eleccion, address indexed votante, address indexed candidato);
    event AuditorElecto(uint256 indexed eleccion, address indexed auditor, uint256 votosObtenidos);

    error SinSBT();
    error EleccionNoAbierta();
    error EleccionYaAbierta();
    error NoPostulado();
    error YaVotaste();
    error YaPostulado();
    error ReeleccionInmediata();
    error SinCandidatos();

    modifier soloCiudadano() {
        if (!ciudadania.esCiudadano(msg.sender)) revert SinSBT();
        _;
    }

    constructor(address ciudadania_, address admin) {
        ciudadania = ICiudadania(ciudadania_);
        ciudadaniaRoles = ICiudadaniaRoles(ciudadania_);
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(MUNICIPIO_ROLE, admin);
        fase = FaseEleccion.Cerrada;
    }

    /// @notice Abre una nueva eleccion semestral.
    function abrirEleccion() external onlyRole(MUNICIPIO_ROLE) {
        if (fase == FaseEleccion.Abierta) revert EleccionYaAbierta();
        eleccionActual += 1;
        fase = FaseEleccion.Abierta;
        auditorPrevio[eleccionActual] = auditorVigente;
        emit EleccionAbierta(eleccionActual);
    }

    /// @notice Un ciudadano se postula como candidato a auditor.
    /// @dev Evita reeleccion inmediata del auditor del mandato anterior.
    function postularse() external soloCiudadano {
        if (fase != FaseEleccion.Abierta) revert EleccionNoAbierta();
        if (postulado[eleccionActual][msg.sender]) revert YaPostulado();
        if (msg.sender == auditorPrevio[eleccionActual]) revert ReeleccionInmediata();
        postulado[eleccionActual][msg.sender] = true;
        emit CandidatoPostulado(eleccionActual, msg.sender);
    }

    /// @notice Un ciudadano vota por un candidato. 1 SBT = 1 voto.
    function votar(address candidato) external soloCiudadano {
        if (fase != FaseEleccion.Abierta) revert EleccionNoAbierta();
        if (!postulado[eleccionActual][candidato]) revert NoPostulado();
        if (yaVoto[eleccionActual][msg.sender]) revert YaVotaste();

        yaVoto[eleccionActual][msg.sender] = true;
        uint256 nuevoTotal = votos[eleccionActual][candidato] + 1;
        votos[eleccionActual][candidato] = nuevoTotal;

        if (nuevoTotal > votosLider[eleccionActual]) {
            lider[eleccionActual] = candidato;
            votosLider[eleccionActual] = nuevoTotal;
        }
        emit VotoEmitido(eleccionActual, msg.sender, candidato);
    }

    /// @notice Cierra la eleccion, asigna el AUDITOR_ROLE al ganador y revoca al anterior.
    /// @dev Requiere que este contrato tenga DEFAULT_ADMIN_ROLE en el SBT para gestionar roles.
    function cerrarEleccion() external onlyRole(MUNICIPIO_ROLE) {
        if (fase != FaseEleccion.Abierta) revert EleccionNoAbierta();
        address ganador = lider[eleccionActual];
        if (ganador == address(0)) revert SinCandidatos();

        bytes32 auditorRole = ciudadaniaRoles.AUDITOR_ROLE();
        if (auditorVigente != address(0)) {
            ciudadaniaRoles.revokeRole(auditorRole, auditorVigente);
        }
        ciudadaniaRoles.grantRole(auditorRole, ganador);

        auditorVigente = ganador;
        fase = FaseEleccion.Cerrada;
        emit AuditorElecto(eleccionActual, ganador, votosLider[eleccionActual]);
    }
}
