pragma solidity ^0.5.0;

contract sendReceive{
    
    address owner;
    constructor() public{
        owner=msg.sender;
    }
    
    modifier onlyOwner(){
        require(msg.sender==owner);
        _;
    }
    function sendEthers(address payable recipient) public onlyOwner{
        recipient.transfer(100);
    }
    function showBalance() public view returns(uint256){
        return owner.balance;
    }
    function () payable external {}
}