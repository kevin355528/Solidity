// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampleStructs {

    struct PaymentReceived {
        address from;
        uint amount;
    }

    PaymentReceived public payment;

    function payContract() public payable {
        payment.from = msg.sender;
        payment.amount = msg.value;
    }
}


