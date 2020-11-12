pragma solidity ^0.5.0;

contract Challenge2{
    
int8 public totalItems; //Counter for items present


constructor() public {
	totalItems=0;
}
	function addItem() public {
		totalItems++;
	}
	
	
}