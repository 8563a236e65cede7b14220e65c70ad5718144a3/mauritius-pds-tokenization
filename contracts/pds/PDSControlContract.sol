// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import "../token/ERC721/IERC721.sol";

/// @notice PDS Project Smart Contract
/// @title Mauritius Property Development Scheme
/// @dev This contract represents the owner of all
/// PDS ERC721 Apartment tokens. This contract will be used to perform
/// project wide operations such as dispersal of funds to building
/// contractors and distribution of returns between
/// ERC20 token investors.
contract PDSControlContract {
    IERC721 apartmentsInterface;
    
    /// @dev Constructor for control contract
    /// @param apartmentAddress The address of the ERC721 instance
    /// that mints the tokens representing apartments
    constructor(address[] memory apartmentAddress) {
        apartmentsInterface = IERC721(apartmentAddress);
        
    }
    
}