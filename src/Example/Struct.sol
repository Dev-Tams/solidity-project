// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

contract Contract{

    enum UserLevel {
        beginner,
        intermediary, advanced
    }
    struct User {
        address user;
        uint balance;
        bool isActive;
        UserLevel level;
    }
    User [] users;

}