pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";

contract OnChainProperties {
         mapping (uint256 => string)  text;
}

contract NFT is ERC721, OnChainProperties {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Item", "ITM") OnChainProperties() public {

    }

    function createItem(address tokenOwner, string memory _text) public returns (uint256) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        text[newItemId] = _text;
        _mint(tokenOwner, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }

    function getProp(uint256 n) public view returns (string memory) {
        return text[n];
    }

}
