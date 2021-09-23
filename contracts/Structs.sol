// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Structs {
    struct User {
        uint8 age;
        string name;
    }
    
    mapping(address => User) public users;
    
    function register(uint8 age, string memory name) external returns(bool) {
        users[msg.sender] = User(age, name);
        return true;
    }
}
