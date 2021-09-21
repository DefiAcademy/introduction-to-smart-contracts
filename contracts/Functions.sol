// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Functions {
    uint256 public data;
    address public owner;
    
    constructor() {
        data = 10;
        owner = msg.sender;
    }
    
    function setComputedData(uint256 _newData) external onlyOwner{
        data = computeData(_newData);
        setData(data);
    }

    function setData(uint256 _newData) public onlyOwner{
        data = _newData;
    }
    
    function computeData(uint256 _data) internal pure returns (uint256){
        return _data * 2;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "Invalid owner");
        _;
    }
}
