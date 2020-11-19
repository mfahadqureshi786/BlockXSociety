pragma solidity ^0.5.0;

contract Hashes{
    
    
    constructor() public{
        
    }
    
 
    function generateHash(address a1,address a2)public view returns(bytes32) {
        if(keccak256(abi.encodePacked(a1))<keccak256(abi.encodePacked(a2))){
            return keccak256(abi.encodePacked(a1,a2));
        }
        return keccak256(abi.encodePacked(a2,a1));
    }
}