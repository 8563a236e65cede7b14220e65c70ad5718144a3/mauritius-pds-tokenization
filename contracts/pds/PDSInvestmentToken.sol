// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import "../token/ERC777/ERC777.sol";

/// @notice PDS Investment Token Smart Contract
/// @title Mauritius Property Development Scheme
/// @dev This contract will provide ERC777 functionality and will
/// be responsible for minting the tokens that represent a stake in
/// a particular apartment.
///
/// These tokens can be transferred and sold through the PDS control
/// contract and can also be used to represent voting rights with
/// regards to investment decisions for the given apartment.
/// 
/// Apartment in this context refers to a linked ERC721 token that
/// represents an actual apartment that will be built and sold as
/// part of the PDS project.
///
/// All redeemed tokens will be burned, which should take place after
/// the sale of the particular apartment has been completed. The user
/// will redeem their token in order to receive their return in ether.
contract PDSInvestmentToken is ERC777 {
    
    constructor(
        string memory name,
        string memory symbol,
        address[] memory defaultOperators
    ) 
    ERC777(name, symbol, defaultOperators) 
    {
        
    }
    
}
