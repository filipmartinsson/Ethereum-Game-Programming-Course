pragma solidity ^0.5.0;

import "../lib/IERC1155.sol";


contract Marketplace {

    IERC1155 private _token;

    mapping (uint => uint) price;

    constructor (IERC1155 token) public {
        require(address(token) != address(0));
        _token = token;
        price[1] = 100000000000000;
        price[2] = 200000000000000;
        price[3] = 300000000000000;
    }

    function () external payable {
        buyTokens(0);
    }

    function buyTokens(uint tokenId) public payable{
        uint256 weiAmount = msg.value;
        require(weiAmount >= price[tokenId] && price[tokenId] != 0);

        _token.safeTransferFrom(address(this), msg.sender, tokenId, 1, "");

    }
    function onERC1155Received(address _operator, address _from, uint256 _id, uint256 _value, bytes calldata _data) external returns(bytes4){
        return bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"));
    }
}
