// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract math {

  
   function add(uint _num1, uint _num2) public pure returns(uint){
        uint sum = _num1 + _num2;
        return sum;
    }

    function sub(uint num1, uint num2) public pure returns(uint){
        uint sum = num1 - num2;
        return sum;
    }

    function multiple(uint num1, uint num2) public pure returns(uint){
        uint sum = num1 * num2;
        return sum;
    }

        function div(uint num1, uint num2) public pure returns(uint){
         uint sum = num1 / num2;
        return sum;
    }



}