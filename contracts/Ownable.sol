pragma solidity >0.4.99 <0.6.0;

contract Ownable{
    //state variables
    address payable owner;

    modifier onlyOwner(){
        require(msg.sender == owner, "This funciton can only be called by the contract owner");
        _;
    }

    //contructor
    constructor() public {
        owner = msg.sender;
    }
}