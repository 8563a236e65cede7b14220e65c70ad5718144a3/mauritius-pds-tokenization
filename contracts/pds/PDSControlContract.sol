// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.0;

import "../token/ERC721/IERC721.sol";
import "../token/ERC721/IERC721Receiver.sol";

/// @notice PDS Control Smart Contract
/// @title Mauritius Property Development Scheme
/// @dev This contract represents the owner of all
/// PDS ERC721 Apartment tokens. This contract will be used to perform
/// project wide operations such as dispersal of funds to building
/// contractors and distribution of returns between
/// ERC20 token investors.
contract PDSControlContract is IERC721Receiver {
    IERC721 apartmentsInterface;
    
    /// @dev Event required for ERC721Receiver interface
    /// @param operator The address which called `safeTransferFrom` function
    /// @param from The address which previously owned the token
    /// @param tokenId The NFT identifier which is being transferred
    /// @param data Additional data with no specified format
    /// @param gas Gas left from the transaction
    event Received(address operator, address from, uint256 tokenId, bytes data, uint256 gas);
    
    /// @dev Constructor for control contract
    /// @param apartmentAddress The address of the ERC721 instance
    /// that mints the tokens representing apartments
    constructor(address apartmentAddress) {
        apartmentsInterface = IERC721(apartmentAddress);
        
    }
    
    /// @dev Required for any contract that wants to support safeTransfers
    /// from ERC721 asset contracts.
    /// 
    /// Whenever an :sol:contract:`IERC721` `tokenId` token is transferred 
    /// to this contract via :sol:func:`safeTransferFrom`
    /// by `operator` from `from`, this function is called.
    ///
    /// It must return its Solidity selector to confirm the token transfer.
    /// If any other value is returned or the interface is not 
    /// implemented by the recipient, the transfer will be reverted.
    /// @param operator The address which called `safeTransferFrom` function
    /// @param from The address which previously owned the token
    /// @param tokenId The NFT identifier which is being transferred
    /// @param data Additional data with no specified format
    /// @param gas Gas left from the transaction
    /// @return `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))`
    /// unless throwing
    function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data)
        public override returns (bytes4)
    {
        emit Received(operator, from, tokenId, data, gasleft());
        return "0x150b7a02";
    }
    
}