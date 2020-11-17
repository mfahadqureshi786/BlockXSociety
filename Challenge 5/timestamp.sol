pragma solidity ^0.5.0;

contract timestamp{
    uint256 daysAfter;
    address owner;
    
    constructor(uint256 dAfter) public{
        owner=msg.sender;
        daysAfter=dAfter;
    }
    
    modifier onlyOwner(){
        require(msg.sender==owner);
        _;
    }
    function() external payable   {} //Fallback function runs when this contract receives any ethers
    
    
    function withdrawEthers(address payable recepient) public onlyOwner{
        if(block.timestamp>=daysAfter * 1 days){
        recepient.transfer(100);    
        }
        
    }
    
    
}