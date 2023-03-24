// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

contract math {
    uint public x = 5;

   // pure function and internal
   function add(uint _num1, uint _num2) internal pure returns(uint){
        uint sum = _num1 + _num2;
        return sum;
    }
    //view function internal
    function sub(uint num1) internal view returns(uint){
         return num1 - x;
       
    }

    // payable
    function deposit () public payable {}

    // internal amd view
    function getBalance () internal view returns (uint) {
        return address(this).balance;
    }



}
