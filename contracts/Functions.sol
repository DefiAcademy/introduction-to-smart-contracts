// SPDX-License-Identifier: MIT

pragma solidity ^0.7.3;

contract Functions {
    uint256 public data;
    address public owner;
    
    constructor() {
        data = 10;
        owner = msg.sender;
    }
    
    function setData(uint256 _newData) public onlyOwner{
        data = computeData(_newData);
    }
    
    function computeData(uint256 _data) internal pure returns (uint256){
        return _data * 2;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "Invalid owner");
        _;
    }
}
