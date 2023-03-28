// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract calcTaxes {
   
      uint public taxes = 30;

      function flatTaxes(uint salary) public view returns (uint){
          return (salary * taxes / 100);
      }

      function flatTaxes(uint income, uint fees) public pure returns (uint){
          return income + fees;
      }
     
}
