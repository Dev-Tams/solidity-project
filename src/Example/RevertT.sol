// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;
import "forge-std/console.sol";
//data types  in solidity


    error Unauthorized();
contract RevertTransaction 
{
   address owner;

	constructor() payable {
		require(msg.value >= 1 ether, "Not enough ether sent");

    }
	function withdraw() public 
	{
		//withdraw all funds
			require(msg.sender == owner);

		//send to the deployer


		payable(msg.sender).transfer(address(this).balance);
        	if( msg.sender == owner){
			revert Unauthorized();
		}

	}

}