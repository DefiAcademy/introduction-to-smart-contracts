// SPDX-License-Identifier: MIT

pragma solidity ^0.7.3;

contract AdvanceStorage {
    mapping(address => uint8) public ages;
    
    function register(uint8 _age) public returns (bool) {
        ages[msg.sender] = _age;
        return true;
    }
}
