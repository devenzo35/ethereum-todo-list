// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract TasksContract {
    struct Task {
        uint256 id;
        string name;
        string description;
        uint256 createdAt;
        bool done;
    }

    mapping(uint256 => Task) public tasks;
}
