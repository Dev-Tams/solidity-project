// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Example/Data.sol";


contract ExampleTest is Test{
    Example public example;

function setUp() public {
        example = new Example(Example.Names.first);
    }
function testExample() public{}
}