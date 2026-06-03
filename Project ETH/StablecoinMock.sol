// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title StablecoinMock - Stablecoin simulada para el MVP del TP
/// @notice Reemplaza a una stablecoin operativa real (ej. una stablecoin oficial)
///         durante el desarrollo y testing. NO usar en producción.
/// @dev En producción este contrato se sustituye por la dirección de la stablecoin real.
contract StablecoinMock is ERC20, Ownable {
    /// @param ownerInicial Dirección que podrá acuñar tokens de prueba.
    constructor(address ownerInicial)
        ERC20("Peso Digital Municipal (MOCK)", "mPDM")
        Ownable(ownerInicial)
    {}

    /// @notice Acuña tokens de prueba. Solo el owner (el Municipio en el MVP).
    /// @param para Dirección destino.
    /// @param cantidad Monto a acuñar (en unidades con 18 decimales).
    function mint(address para, uint256 cantidad) external onlyOwner {
        _mint(para, cantidad);
    }
}
