// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract AdvanceStorage {
    mapping(address => uint8) public ages;
    
    function register(uint8 age) public returns(bool){
        ages[msg.sender] = age;
        return true;
    }
    
    function getAge(address anyAddress) public view returns(uint8){
        return ages[anyAddress];
    }
}
