// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;
import "forge-std/console.sol";
//data types  in solidity

contract Example {

//unsigned integers
    uint8 x;
    uint16 y;


//integers
    int32 z;
//bool
    bool myCondition;

    //enums
      enum Names {first, second, other}
  
  constructor(Names name){
    if (name == Names.first) {
        console.log('first name');
    }
    if (name == Names.other) {
        console.log('Other name');
    }
    if (name == Names.second) {
        console.log('second name');
    }
  }
}