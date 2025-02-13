// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    function double(uint value) external pure returns(uint) {
        return value * 2;
    }

    function double(uint value1, uint value2) external pure returns (uint, uint) {
        return (value1*2, value2*2);
    }
}