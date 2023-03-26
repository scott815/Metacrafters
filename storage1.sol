// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract storage1 {

    uint256 total; // storage example
  
   function add(uint _num1, uint _num2) public pure returns(uint){
        uint sum = _num1 + _num2;
        return sum;
    }


    function addTotal(uint _num3) public returns(uint) {
        total += _num3;
        return total;
    }

  function returnTotal() public view returns(uint256) {
        return total;
    }

  

}
