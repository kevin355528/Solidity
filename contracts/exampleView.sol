// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampleView {
    uint public myVar;

    function getMyVar() public view returns (uint) {
        return myVar;
    }

    function getAddi(uint a, uint b) public pure returns(uint) {
        return a+b;

    }

    function setMyVar(uint _newVar) public returns(uint) {
        myVar = _newVar;
        return myVar;
    }
}
