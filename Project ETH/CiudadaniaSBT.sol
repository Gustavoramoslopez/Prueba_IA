// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./ICiudadania.sol";

/// @title CiudadaniaSBT - Credencial de ciudadanía no transferible (Soulbound Token)
/// @author TP Final Ethereum Developer Pack - ETH Kipu
/// @notice Padrón de identidad ciudadana de Tres de Febrero. Es la fuente única de
///         verdad sobre quién es ciudadano y qué rol tiene en el sistema.
/// @dev Implementa un Soulbound Token: un ERC-721 cuya transferencia está bloqueada
///      mediante el override de _update. Solo permite mint (alta) y burn (revocación).
///      Aplica el patrón de Acceso Restringido del Modulo 3 (via AccessControl).
contract CiudadaniaSBT is ERC721, ERC721Enumerable, AccessControl, ICiudadania {
    // ----------------------------------------------------------------
    // Roles del sistema (patron Access Restriction, Modulo 3)
    // ----------------------------------------------------------------

    /// @notice Rol del Ejecutivo Municipal: emite y revoca SBTs, opera el oraculo.
    bytes32 public constant MUNICIPIO_ROLE = keccak256("MUNICIPIO_ROLE");

    /// @notice Rol del Concejo Deliberante: valida factibilidad de propuestas.
    bytes32 public constant CONCEJO_ROLE = keccak256("CONCEJO_ROLE");

    /// @notice Rol del auditor ciudadano electo: firma liberaciones de hitos.
    bytes32 public constant AUDITOR_ROLE = keccak256("AUDITOR_ROLE");

    // ----------------------------------------------------------------
    // Datos de cada ciudadano
    // ----------------------------------------------------------------

    /// @notice Datos asociados a cada SBT. El rango de aporte es escalonado para
    ///         preservar la privacidad del aporte fiscal exacto (premisa no negociable).
    struct DatosCiudadano {
        bool esContribuyente; // true si paga tributos municipales
        uint8 rangoAporte;    // escalon de aporte (0 = no contribuyente), nunca el monto exacto
        uint64 fechaEmision;  // timestamp de emision
    }

    /// @dev tokenId => datos del ciudadano.
    mapping(uint256 => DatosCiudadano) private _datos;

    /// @dev wallet => tokenId. Un SBT por persona (0 = sin SBT).
    mapping(address => uint256) private _tokenDe;

    /// @dev Contador incremental de tokenIds (empieza en 1; 0 es "sin token").
    uint256 private _siguienteId = 1;

    // ----------------------------------------------------------------
    // Eventos
    // ----------------------------------------------------------------

    /// @notice Se emite al dar de alta un ciudadano.
    event SBTEmitido(address indexed ciudadano, uint256 indexed tokenId, bool esContribuyente);

    /// @notice Se emite al revocar un SBT (fallecimiento, mudanza, fraude).
    event SBTRevocado(uint256 indexed tokenId, address indexed ciudadano);

    // ----------------------------------------------------------------
    // Custom errors (gas-efficient; equivalen a los require del material del curso)
    // ----------------------------------------------------------------

    error YaEsCiudadano(address cuenta);
    error NoEsCiudadano(uint256 tokenId);
    error TransferenciaNoPermitida();

    // ----------------------------------------------------------------
    // Constructor
    // ----------------------------------------------------------------

    /// @param municipio Direccion del Ejecutivo Municipal (admin inicial y MUNICIPIO_ROLE).
    constructor(address municipio) ERC721("Ciudadano de Tres de Febrero", "C3F") {
        _grantRole(DEFAULT_ADMIN_ROLE, municipio);
        _grantRole(MUNICIPIO_ROLE, municipio);
    }

    // ----------------------------------------------------------------
    // Emision y revocacion (solo Municipio)
    // ----------------------------------------------------------------

    /// @notice Emite un SBT de ciudadania tras el KYC off-chain.
    /// @param para Wallet del ciudadano verificado.
    /// @param esContribuyente_ true si el ciudadano paga tributos.
    /// @param rangoAporte Escalon de aporte (0 si no contribuye).
    /// @return tokenId del SBT emitido.
    function emitirSBT(address para, bool esContribuyente_, uint8 rangoAporte)
        external
        onlyRole(MUNICIPIO_ROLE)
        returns (uint256 tokenId)
    {
        if (_tokenDe[para] != 0) revert YaEsCiudadano(para);

        tokenId = _siguienteId++;
        _datos[tokenId] = DatosCiudadano({
            esContribuyente: esContribuyente_,
            rangoAporte: rangoAporte,
            fechaEmision: uint64(block.timestamp)
        });
        _tokenDe[para] = tokenId;

        _safeMint(para, tokenId);
        emit SBTEmitido(para, tokenId, esContribuyente_);
    }

    /// @notice Revoca (quema) un SBT. Para fallecimiento, perdida de residencia o fraude.
    /// @param tokenId SBT a revocar.
    function revocarSBT(uint256 tokenId) external onlyRole(MUNICIPIO_ROLE) {
        address duenio = _ownerOf(tokenId);
        if (duenio == address(0)) revert NoEsCiudadano(tokenId);

        delete _datos[tokenId];
        delete _tokenDe[duenio];

        _burn(tokenId);
        emit SBTRevocado(tokenId, duenio);
    }

    // ----------------------------------------------------------------
    // Consultas (implementan ICiudadania)
    // ----------------------------------------------------------------

    /// @inheritdoc ICiudadania
    function esCiudadano(address cuenta) external view returns (bool) {
        return _tokenDe[cuenta] != 0;
    }

    /// @inheritdoc ICiudadania
    function esContribuyente(address cuenta) external view returns (bool) {
        uint256 tokenId = _tokenDe[cuenta];
        if (tokenId == 0) return false;
        return _datos[tokenId].esContribuyente;
    }

    /// @inheritdoc ICiudadania
    /// @dev totalSupply proviene de ERC721Enumerable: cuenta los SBTs vigentes.
    function totalCiudadanosActivos() external view returns (uint256) {
        return totalSupply();
    }

    /// @notice Devuelve los datos de un ciudadano por su wallet.
    function datosDe(address cuenta) external view returns (DatosCiudadano memory) {
        return _datos[_tokenDe[cuenta]];
    }

    /// @notice Devuelve el tokenId asociado a una wallet (0 si no tiene).
    function tokenDe(address cuenta) external view returns (uint256) {
        return _tokenDe[cuenta];
    }

    // ----------------------------------------------------------------
    // Logica Soulbound: bloqueo de transferencias
    // ----------------------------------------------------------------

    /// @dev Override de _update: permite mint (from == 0) y burn (to == 0),
    ///      pero revierte cualquier transferencia entre cuentas. Esto es lo que
    ///      hace que el token sea "Soulbound" (no transferible).
    function _update(address to, uint256 tokenId, address auth)
        internal
        override(ERC721, ERC721Enumerable)
        returns (address)
    {
        address from = _ownerOf(tokenId);
        if (from != address(0) && to != address(0)) {
            revert TransferenciaNoPermitida();
        }
        return super._update(to, tokenId, auth);
    }

    /// @dev Requerido por Solidity al heredar de ERC721Enumerable.
    function _increaseBalance(address cuenta, uint128 cantidad)
        internal
        override(ERC721, ERC721Enumerable)
    {
        super._increaseBalance(cuenta, cantidad);
    }

    /// @dev Resuelve el conflicto de herencia multiple de supportsInterface.
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
