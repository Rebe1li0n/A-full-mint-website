// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimidaPunksNFT is ERC721, Ownable {
    uint256 public mintPrice; //price
    uint256 public totalSupply; //minted
    uint256 public maxSupply;
    uint256 public maxPerWallet; 
    bool public isPublicMintEnabled;
    string internal baseTokenUri;
    address payable public withdrawWallet;
    mapping(address => uint256) public walletMints;

    constructor() payable ERC721("SimidaPunks", "SP") {
        mintPrice = 0.066 ether;
        totalSupply = 0;
        maxSupply = 1000;
        maxPerWallet = 3;
        //undo
        //set withdraw wallet address
    }

    function setIsPublicMintEnabled(bool _isPublicMintEnabled) external onlyOwner {
        isPublicMintEnabled = _isPublicMintEnabled;
    }
    function setBaseTokenUri(string calldata _baseTokenUri) external onlyOwner {
        baseTokenUri = _baseTokenUri;
    }

    function tokenURI(uint256 _tokenId) public view override returns (string memory){
        require(_exists(_tokenId), "Token dose not exist!");
        return
            string(
                abi.encodePacked(
                    baseTokenUri,
                    Strings.toString(_tokenId),
                    ".json"
                )
            );
    }

    function withdraw() external onlyOwner {
        (bool success, ) = withdrawWallet.call{value: address(this).balance}('');
        require(success, "whitdraw failed!");
    }
 
    function mint(uint256 _quantity) public payable {
        require(isPublicMintEnabled, "minting not enabled");
        require(msg.value == _quantity * mintPrice, "wrong mint value");
        require(totalSupply + _quantity < maxSupply, "sold out");
        require(walletMints[msg.sender] + _quantity < maxPerWallet, "exceed max wallet");
        
        // Azuki dev a new ERC721a, whick did not use a for loop to save gas?        

        for (uint256 i = 0; i < _quantity; i ++) {
            uint256 newTokenId = totalSupply + 1;
            totalSupply ++;      //notice the seq to avoid reentrance attack
            _safeMint(msg.sender, newTokenId);
        }
    }
}
