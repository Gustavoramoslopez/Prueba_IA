// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title ICiudadania - Interfaz del padrón de ciudadanía
/// @notice La consultan PoolA, PoolB, CatalogoProyectos, Ejecucion y GobernanzaAuditor
///         para verificar identidad y contar ciudadanos activos. Centraliza la verdad
///         sobre quién es ciudadano del sistema.
interface ICiudadania {
    /// @notice Indica si una wallet posee un SBT de ciudadanía vigente.
    /// @param cuenta Dirección a verificar.
    /// @return true si la cuenta es ciudadano verificado.
    function esCiudadano(address cuenta) external view returns (bool);

    /// @notice Indica si una wallet tiene además estado de contribuyente.
    /// @param cuenta Dirección a verificar.
    /// @return true si la cuenta es ciudadano contribuyente.
    function esContribuyente(address cuenta) external view returns (bool);

    /// @notice Cantidad total de SBTs vigentes. La usa PoolB para la cuota igualitaria.
    /// @return Número de ciudadanos activos.
    function totalCiudadanosActivos() external view returns (uint256);
}
