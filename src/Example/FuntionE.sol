// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
   uint public x;
   uint public o = 1;

    constructor(uint p){
         x = p;
    }

    function increment() external returns(uint){
         return x++;
    }
}