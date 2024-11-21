// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampelConstructor {
    address public myAddr;
    
    constructor(address _someAddress) {
        myAddr = _someAddress;
    }

    function setAddr(address _myAddress) public {
        myAddr = _myAddress;
    }

    function setMyAddrToMsgSender() public {
        myAddr = msg.sender;
    }
}
