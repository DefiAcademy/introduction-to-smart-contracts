// SPDX-License-Identifier: MIT

pragma solidity ^0.7.3;

import "./ContractB.sol";

contract ContractA is ContractB{
   function getInterest(uint256 _valueToCalculate) public pure returns (uint256){
       return calculate(_valueToCalculate);
   }
}
