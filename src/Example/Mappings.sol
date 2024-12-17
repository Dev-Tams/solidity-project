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
}