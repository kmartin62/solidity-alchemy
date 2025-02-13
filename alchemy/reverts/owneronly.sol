// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    address public owner;

    constructor() payable {
        require(msg.value <= 1 ether);
        owner = msg.sender;
    }

    function withdraw() external {
        require(msg.sender == owner);
        // selfdestruct(payable(owner));
        (bool s, ) = owner.call{ value: address(this).balance }("");
        require(s);
    }
}