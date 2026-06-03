// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

/// @title OraculoFiscal - Puente de datos fiscales hacia la blockchain
/// @author TP Final Ethereum Developer Pack - ETH Kipu
/// @notice Publica on-chain, por periodo, la recaudacion agregada, la cuota individual
///         del Pool A de cada ciudadano y el monto total del Pool B. En el MVP los datos
///         se siembran manualmente (oraculo simulado); en produccion se integra con SIAF.
/// @dev Aplica el patron Oraculo del Modulo 3 (version simplificada, sin Chainlink, porque
///      el dato es fiscal y lo publica el Municipio via rol). Pausable como Circuit Breaker.
contract OraculoFiscal is AccessControl, Pausable {
    bytes32 public constant MUNICIPIO_ROLE = keccak256("MUNICIPIO_ROLE");

    struct DatosPeriodo {
        uint256 recaudacionTotal;
        uint256 montoPoolB;
        bytes32 hashExpediente; // anclaje de integridad del expediente fiscal off-chain
        uint64 abiertoEn;
        bool abierto;
    }

    /// @notice Contador del periodo en curso (0 = ninguno abierto aun).
    uint256 public periodoActual;
    mapping(uint256 => DatosPeriodo) public periodos;
    /// @dev periodo => ciudadano => cuota asignable del Pool A.
    mapping(uint256 => mapping(address => uint256)) private _cuotaPoolA;

    event PeriodoAbierto(uint256 indexed periodo, uint256 recaudacion, uint256 montoPoolB);
    event CuotasPublicadas(uint256 indexed periodo, uint256 cantidad);
    event PeriodoCorregido(uint256 indexed periodo);

    error PeriodoYaAbierto();
    error LongitudesNoCoinciden();

    constructor(address municipio) {
        _grantRole(DEFAULT_ADMIN_ROLE, municipio);
        _grantRole(MUNICIPIO_ROLE, municipio);
    }

    /// @notice Abre un nuevo periodo publicando recaudacion y monto del Pool B.
    function abrirPeriodo(uint256 recaudacion, uint256 montoPoolB_, bytes32 hashExpediente)
        external
        onlyRole(MUNICIPIO_ROLE)
        whenNotPaused
        returns (uint256 periodo)
    {
        periodo = ++periodoActual;
        periodos[periodo] = DatosPeriodo({
            recaudacionTotal: recaudacion,
            montoPoolB: montoPoolB_,
            hashExpediente: hashExpediente,
            abiertoEn: uint64(block.timestamp),
            abierto: true
        });
        emit PeriodoAbierto(periodo, recaudacion, montoPoolB_);
    }

    /// @notice Publica (en batch) la cuota del Pool A de cada ciudadano para un periodo.
    function publicarCuotasPoolA(
        uint256 periodo,
        address[] calldata ciudadanos,
        uint256[] calldata cuotas
    ) external onlyRole(MUNICIPIO_ROLE) whenNotPaused {
        if (ciudadanos.length != cuotas.length) revert LongitudesNoCoinciden();
        for (uint256 i = 0; i < ciudadanos.length; i++) {
            _cuotaPoolA[periodo][ciudadanos[i]] = cuotas[i];
        }
        emit CuotasPublicadas(periodo, ciudadanos.length);
    }

    /// @notice Corrige datos de un periodo (flanco debil del MVP: oraculo simulado).
    /// @dev En produccion deberia tener timelock; en MVP es directo por MUNICIPIO_ROLE.
    function corregirPeriodo(uint256 periodo, uint256 recaudacion, uint256 _montoPoolB)
        external
        onlyRole(MUNICIPIO_ROLE)
    {
        periodos[periodo].recaudacionTotal = recaudacion;
        periodos[periodo].montoPoolB = _montoPoolB;
        emit PeriodoCorregido(periodo);
    }

    /// @notice Cuota del Pool A de un ciudadano en un periodo.
    function cuotaPoolA(address ciudadano, uint256 periodo) external view returns (uint256) {
        return _cuotaPoolA[periodo][ciudadano];
    }

    /// @notice Monto total del Pool B comunitario de un periodo.
    function montoPoolB(uint256 periodo) external view returns (uint256) {
        return periodos[periodo].montoPoolB;
    }

    function pausar() external onlyRole(MUNICIPIO_ROLE) { _pause(); }
    function despausar() external onlyRole(MUNICIPIO_ROLE) { _unpause(); }
}
