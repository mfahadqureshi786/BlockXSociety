pragma solidity ^0.5.0;

contract ToDoList{
    
int8 public nItems; //Counter only for items added even if they are removed
struct Task{
	string name;
	string pass;
	bool on;
}
mapping(int8=>Task) public tasks; //Mapping starts from Index 1

constructor() public {
	nItems=0;
	
}
	function addItem(string memory name,string memory pass) public {
		tasks[nItems]=Task(name,pass,true);
		nItems++;
		
	}
	function toggleTask(string memory pass,int8 index) public {
	    if(index<nItems)
	    
	    {   
	        string memory p=tasks[index].pass;
	        if(keccak256(abi.encodePacked(p))==keccak256(abi.encodePacked(pass)))
	         {
	        if(tasks[index].on){
	         tasks[index].on=false;   
	        }
	         else{
	         tasks[index].on=true;    
	         }
	         
	             
	         }
	    }
	        
	    
	}
	
}