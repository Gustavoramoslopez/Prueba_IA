// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./CatalogoProyectos.sol";

/// @title Ejecucion - Custodia de fondos y liberacion por multisig 2-de-3
/// @author TP Final Ethereum Developer Pack - ETH Kipu
/// @notice Custodia los fondos de proyectos financiados y los libera al proveedor
///         cuando 2 de 3 firmantes (auditor electo, Ejecutivo, Concejo) firman.
/// @dev Las devoluciones por proyectos que NO alcanzan el umbral se gestionan en los
///      propios Pools (Pull-over-Push), que es donde quedan los fondos. Este contrato
///      custodia los proyectos financiados y los libera por multisig 2-de-3.
///      Aplica Checks-Effects-Interactions y ReentrancyGuard en los movimientos de fondos.
contract Ejecucion is AccessControl, ReentrancyGuard, Pausable {
    bytes32 public constant POOL_ROLE = keccak256("POOL_ROLE");
    bytes32 public constant FIRMANTE_ROLE = keccak256("FIRMANTE_ROLE");
    bytes32 public constant MUNICIPIO_ROLE = keccak256("MUNICIPIO_ROLE");

    /// @notice Cantidad de firmas requeridas para liberar (2 de 3).
    uint256 public constant FIRMAS_REQUERIDAS = 2;

    IERC20 public immutable stablecoin;
    CatalogoProyectos public immutable catalogo;

    struct FondosProyecto {
        uint256 totalCustodiado;  // monto financiado y en custodia
        uint256 firmas;           // cantidad de firmas acumuladas
        bool liberado;            // true si ya se libero al proveedor
        address proveedor;        // destino de la liberacion
        uint64 plazoEjecucion;    // deadline para completar la obra
    }

    /// @dev proyectoId => datos de custodia.
    mapping(uint256 => FondosProyecto) public fondos;
    /// @dev proyectoId => firmante => ya firmo.
    mapping(uint256 => mapping(address => bool)) public yaFirmo;

    event FondosRecibidos(uint256 indexed proyectoId, uint256 monto);
    event FirmaRegistrada(uint256 indexed proyectoId, address indexed firmante, uint256 totalFirmas);
    event FondosLiberados(uint256 indexed proyectoId, address indexed proveedor, uint256 monto);

    error YaFirmaste();
    error YaLiberado();
    error SinProveedor();
    error PlazoNoVencido();

    /// @param stablecoin_ Stablecoin del fondo.
    /// @param catalogo_ Catalogo de proyectos.
    /// @param admin Administrador (Municipio).
    constructor(address stablecoin_, address catalogo_, address admin) {
        stablecoin = IERC20(stablecoin_);
        catalogo = CatalogoProyectos(catalogo_);
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(MUNICIPIO_ROLE, admin);
    }

    // ----------------------------------------------------------------
    // Recepcion de fondos desde los Pools
    // ----------------------------------------------------------------

    /// @notice La llaman PoolA/PoolB al cerrar periodo para depositar fondos de un
    ///         proyecto financiado. El pool debe haber aprobado el transferFrom antes.
    function recibirFondos(uint256 proyectoId, uint256 monto, address proveedor, uint64 plazoEjecucion)
        external
        onlyRole(POOL_ROLE)
        whenNotPaused
    {
        if (proveedor == address(0)) revert SinProveedor();
        // Effects
        FondosProyecto storage f = fondos[proyectoId];
        f.totalCustodiado += monto;
        f.proveedor = proveedor;
        f.plazoEjecucion = plazoEjecucion;
        // Interaction
        require(stablecoin.transferFrom(msg.sender, address(this), monto), "transfer fallida");
        emit FondosRecibidos(proyectoId, monto);
    }

    // ----------------------------------------------------------------
    // Multisig 2-de-3
    // ----------------------------------------------------------------

    /// @notice Un firmante autorizado firma la liberacion. Al llegar a 2 firmas, libera.
    /// @dev Checks-Effects-Interactions: valida, actualiza firmas/estado, transfiere al final.
    function firmarLiberacion(uint256 proyectoId)
        external
        onlyRole(FIRMANTE_ROLE)
        nonReentrant
        whenNotPaused
    {
        FondosProyecto storage f = fondos[proyectoId];
        if (f.liberado) revert YaLiberado();
        if (yaFirmo[proyectoId][msg.sender]) revert YaFirmaste();

        // Effects
        yaFirmo[proyectoId][msg.sender] = true;
        f.firmas += 1;
        emit FirmaRegistrada(proyectoId, msg.sender, f.firmas);

        if (f.firmas >= FIRMAS_REQUERIDAS) {
            f.liberado = true;
            uint256 monto = f.totalCustodiado;
            f.totalCustodiado = 0;
            // Marca el proyecto como Ejecutado en el catalogo
            catalogo.marcarEstado(proyectoId, CatalogoProyectos.Estado.Ejecutado);
            // Interaction
            require(stablecoin.transfer(f.proveedor, monto), "liberacion fallida");
            emit FondosLiberados(proyectoId, f.proveedor, monto);
        }
    }

    // ----------------------------------------------------------------
    // Vencimiento de plazo de ejecucion
    // ----------------------------------------------------------------

    /// @notice Si el plazo de ejecucion vencio sin 2 firmas, marca el proyecto Fallido
    ///         para habilitar el circuito de devolucion.
    function vencerPlazoEjecucion(uint256 proyectoId) external whenNotPaused {
        FondosProyecto storage f = fondos[proyectoId];
        if (f.liberado) revert YaLiberado();
        if (block.timestamp < f.plazoEjecucion) revert PlazoNoVencido();
        catalogo.marcarEstado(proyectoId, CatalogoProyectos.Estado.Fallido);
    }

    function pausar() external onlyRole(MUNICIPIO_ROLE) { _pause(); }
    function despausar() external onlyRole(MUNICIPIO_ROLE) { _unpause(); }
}
