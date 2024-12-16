// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

contract Contract {
	uint[] public evenNumbers;


//This  functions filters even numbers

	function filterEven(uint[] calldata x) external {
		for(uint i = 0; i < x.length; i++) {
			if(x[i] % 2 == 0) {
				evenNumbers.push(x[i]);
			}
		}
	}
    
}