pragma solidity ^0.4.18;

contract Ownable{
    //state variables
    address owner;

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    //contructor
    constructor() public {
        owner = msg.sender;
    }
}