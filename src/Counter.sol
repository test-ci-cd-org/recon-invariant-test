// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint64 public number;

    function setNumber(uint64 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
