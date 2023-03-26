// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract math {

  
   function add(uint _num1, uint _num2) public pure returns(uint){
        uint sum = _num1 + _num2;
         require(sum > 25, "Sum of two number must be greated the 25");
        return sum;
    }

    function sub(uint num1, uint num2) public pure returns(uint){
        uint sum = num1 - num2;
        if (sum <= 25) {
            revert("Sum of two number must be greated the 25");
        }
        return sum;
    }

    function multiple(uint num1, uint num2) public pure returns(uint){
        uint sum = num1 * num2;
        
        return sum;
    }

    function div(uint num1, uint num2) public pure returns(uint){
         assert(num1 != 0);
         assert(num2 != 0);
         uint sum = num1 / num2;

        return sum;
    }

}
