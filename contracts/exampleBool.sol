// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampleBool {
    bool public myBool;

    function setBool(bool _myBool) public {
        myBool = _myBool;
    }
}