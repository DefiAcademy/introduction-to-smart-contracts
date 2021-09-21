// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract AdvanceStorage {

    mapping(address => uint8) public ages;
    
    function register(uint8 age) external returns(bool) {
        ages[msg.sender] = age;
        return true;
    }
}
