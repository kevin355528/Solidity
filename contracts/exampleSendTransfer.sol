// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract Sender {
    
    receive() external payable { }

    function withdrawTransfer(address payable _to) public {
        _to.transfer(10);
    }

    function withdrawSend(address payable _to) public {
        _to.send(10);
    }
}

contract ReceiverNoAction {

    function balance() public view returns(uint) {
        return address(this).balance;
    }
    receive() external payable { }
}

contract ReceiverAction {
    uint public balanceReceived;
    receive() external payable {
        balanceReceived += msg.value;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}