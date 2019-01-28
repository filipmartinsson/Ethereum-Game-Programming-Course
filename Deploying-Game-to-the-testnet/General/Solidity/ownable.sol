pragma solidity 0.5.1;

contract Ownable{

    address public owner;

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor() public{
        owner = msg.sender;
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0));
        owner = newOwner;
    }
}
