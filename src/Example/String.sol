  //string data types, stored in double quotes, 

  //strings for more characters 

  //bytes for few characters = efficiency
  
  pragma solidity ^0.8.20;

contract Contract {

    bytes32 public msg1 = "Hello World";
    string public msg2 =  "This is a string, longer than 32 bytes";
    constructor() {
        
    }
}