// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampleAddress {
    address public someAddress;

    function serSomeAddress (address _address) public {
        someAddress = _address;
    }

    function getBalance() public view returns (uint) {
        return someAddress.balance;
    }
}