// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;
error Unauthorized();
contract Escrow {

    
    address public depositor;
    address public beneficiary;
    address public arbiter;
    constructor(address _arbiter, address _beneficiary) payable{
        arbiter = _arbiter;
        beneficiary = _beneficiary;
        depositor = msg.sender;
    }
    event Approved(uint);
    function approve() external
    {
        if(msg.sender != arbiter){
            revert Unauthorized();
        }

        uint balance = address(this).balance;
        (bool s,) = beneficiary.call{value: address(this).balance}("");
        require (s);

     emit Approved(balance);

    }
}