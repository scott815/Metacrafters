// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;



contract globalFunctions {

    uint public pastBlockTime;
    uint256 ticketPrice = 0.1 ether;

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }



    function playLottery(uint256 _number) public payable {
        // validate value sent
        require(msg.value >= ticketPrice, "Minimum value is 0.1 ETH!");
    }

    function spin() external payable {
        require(msg.value == ticketPrice ); // must send 10 ether to play
        require(block.timestamp != pastBlockTime); // only 1 transaction per block

        pastBlockTime = block.timestamp;

        if (block.timestamp % 15 == 0) {
            (bool sent, ) = msg.sender.call{value: address(this).balance}("");
            require(sent, "Failed to send Ether");
        }
    }
}
