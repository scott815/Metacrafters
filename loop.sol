// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract loop {

    function bigLoops() public pure  {
        uint sum;
        for (uint i=0; i<1000; i++) {
            sum = i + sum ;
        }
    }

    function smallLoops() public pure {
        uint sum1;
        for (uint i=0; i<300; i++) {
            sum1 = i + sum1 + 444 + 3333 + 4444 * 555;
        }
    }
    //both fail due to not gas need to increase limit
}