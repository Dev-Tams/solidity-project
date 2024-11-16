// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Example/StringD.sol";

contract StringD is test{
    StringD public stringD;

    function setUp() public{
        stringD = new StringD();
    }


    function testString() public{
        assertEq(stringD.msg1(), "Hello World");
        assertEq(stringD.msg2(), "This is a string, longer than 32 bytes");
    }
}