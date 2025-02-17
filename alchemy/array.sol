// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StackClub {
    address[] public members;

    constructor() {
        members.push(msg.sender);
    }

    function addMember(address memberAddress) external {
        require(isMember(msg.sender));
        members.push(memberAddress);
    }

    function isMember(address memberAddress) public view returns (bool) {
        for(uint i = 0; i < members.length; i ++) {
            if (members[i] == memberAddress) {
                return true;
            }
        }
        return false;
    }

    function removeLastMember() external {
        require(isMember(msg.sender));
        members.pop();
    }
}