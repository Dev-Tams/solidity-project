// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Contract {
    mapping( address => bool) public members;

    function addMember(address v) external
    {
        members[v] = true;
    }

    function isMember(address v) public view returns(bool) 
    {
        return members[v];
    } 

    function removeMember(address v) external 
    {
        members[v] = false; 
    }

  
  
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

	function createUser() external {
		require(!users[msg.sender].isActive);
		users[msg.sender] = User(100, true);
	}

    function transfer(address v, uint256 amount) external{
		require(users[msg.sender].isActive);
		require(users[v].isActive);
		require(users[msg.sender].balance > amount);
		users[msg.sender].balance -=amount;
		users[v].balance +=amount;



	}
}


