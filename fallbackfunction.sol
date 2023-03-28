// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract fallbackFunction {
    // Events
    event Deposit(address indexed _from, uint256 _value);

    // Fallback function
    fallback() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    // Receive function
    receive() external payable  {
        emit Deposit(msg.sender, msg.value);
    }

    // Function to get the contract balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

