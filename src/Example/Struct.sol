// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

Contract S{

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