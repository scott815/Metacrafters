
// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

 contract test1 {
     uint number;
     string name;
     bool boolean;
     address ethAddress;


    function setNumber(uint _number) public{
        number = _number;
    }

    function getNumber() public view returns(uint){
        return number;
    }

    
    function setName(string memory _name) public{
        name = _name;
    }

    function getName() public view returns(string memory){
        return name;
    }
      
    function setBoolean(bool _boolean) public{
        boolean = _boolean;
    }

    function getBoolean() public view returns(bool){
        return boolean;
    }

      function setEthAddress(address _ethAddress) public{
        ethAddress = _ethAddress;
    }

    function getEthAddress() public view returns(address){
        return ethAddress;
    }

 }