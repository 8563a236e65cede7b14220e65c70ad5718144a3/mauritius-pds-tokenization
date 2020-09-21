// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import "../token/ERC721/ERC721.sol";

/// @notice PDS Apartments Smart Contract
/// @title Mauritius Property Development Scheme
/// @dev This contract will provide ERC721 functionality and will
/// be responsible for minting the tokens that represent apartments.
/// These tokens will not be transferred or sold but will merely be
/// used as a representation of an apartment to be built, and operations
/// that can be performed in that context. At the end of the project
/// all minted tokens will be burned.
/// 
/// The URIs of each token will provide metadata for the investors about
/// the particulars of the apartment represented by the token.
contract PDSApartments is ERC721 {
    
    /// @dev Constructor for apartment token minter
    /// @param name Name of the token collection
    /// @param symbol Symbol of the token collection
    constructor (string memory name, string memory symbol) 
    ERC721(name, symbol) 
    {
        
    }
    
} 