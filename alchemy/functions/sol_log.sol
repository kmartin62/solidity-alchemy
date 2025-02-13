// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Contract {
    function winningNumber(string calldata secretMessage) view external returns(uint) {
        console.log(secretMessage); // console.log prints what should be returned
        return 794;
    }
}
