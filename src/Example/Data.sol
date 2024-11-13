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
    // bool myCondition;
    constructor(bool myCondition) {
        if (myCondition == true) {
            console.log('error with bool');
        }
    }

    //enums
      enum names {first, second, third, fourth}
  
}