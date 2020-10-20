// SPDX-License-Identifier: MIT

pragma solidity ^0.7.3;

contract ContractB {
    function whoAmI() public pure returns (bytes32) {
        return "Im ContractB";
    }
    
    function calculate(uint256 _numberToCalculate) internal pure returns (uint256) {
        return _numberToCalculate * 10;
    } 
}
