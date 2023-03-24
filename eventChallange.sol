// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EventChallenge {
  event Deposit(address indexed _from, uint _value);
  event Withdrawal(address indexed _to, uint _value);
  event Transfer(address indexed _from, address indexed _to, uint _value);

    function deposit () payable public {
        emit Deposit (msg.sender, msg.value);

  }
    function withdraw (uint256 amount) payable public {
        require(address(this).balance > amount, "withdraw can not be more then balance");
        address payable to = payable(msg.sender);
        to.transfer(amount); 
        emit Withdrawal (msg.sender, amount);


  }
    function transfer (address _to, uint256 amount) payable public {
      require(address(this).balance > amount, "transfer can not be more then balance");
      address payable to = payable(msg.sender);
      to.transfer(amount);

        emit Transfer (msg.sender, _to, amount);

  }

}
// Javascript code
// let contract_abi = abi_json;
// let EventChallenge = web3.eth.contract(contract_abi);
// let EventChallengetContract = ClientReceipt.at("0x98...");

// EventChallengeContract.transfer(function(err, data) {
//    if (!err)
//    console.log(data);
// });

// EventChallengeContract.withdraw(function(err, data) {
//    if (!err)
//    console.log(data);
// });

// EventChallengeContract.deposit(function(err, data) {
//    if (!err)
//    console.log(data);
// });
