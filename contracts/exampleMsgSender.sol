// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampleMsgSender {
    address public someAddress;

    function updateAddr() public {
        someAddress = msg.sender;
    }
}

