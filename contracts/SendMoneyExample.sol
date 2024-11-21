// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract SendWithdrawMoney {

    uint public balancedReceived;
    function deposit() public payable {
        balancedReceived += msg.value;
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdralAll() public {
        address payable to = payable (msg.sender);
        to.transfer(getContractBalance());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
    }
}
