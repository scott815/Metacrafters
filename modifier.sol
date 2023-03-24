// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract math {

    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner  { 
        require (owner == msg.sender, "only owner can access");
        _;
    }
  
   function add(uint _num1, uint _num2) public view onlyOwner returns(uint){
        uint sum = _num1 + _num2;
        return sum;
    }

    function sub(uint num1, uint num2) public view onlyOwner returns(uint){
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

    function changePrice(uint _price) public onlyOwner {
      //
   }

}



