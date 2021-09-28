// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract TasksContract {
    uint256 counter = 0;

    struct Task {
        uint256 id;
        string name;
        string description;
        bool done;
        uint256 createdAt;
    }

    mapping(uint256 => Task) public tasks;

    function createTask(string memory _title, string memory _description)
        public
    {
        tasks[counter] = Task(
            counter,
            _title,
            _description,
            false,
            block.timestamp
        );
        counter++;
    }
}
