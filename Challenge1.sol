pragma solidity ^0.5.0;

contract Challenge1{
    
int8 public nItems; //Counter only for items added even if they are removed
int8 public totalItems; //Counter for items present
struct Item{
	int8 id;
	string name;
}
mapping(int8=>Item) public items; //Mapping starts from Index 1

constructor() public {
	nItems=0;
	totalItems=0;
}
	function addItem(string memory name) public {
		items[nItems]=Item(nItems,name);
		nItems++;
		totalItems++;
	}
	
	function getItem(int8 id) public view returns(string memory){
		return items[id].name;
	}
}