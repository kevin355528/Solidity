// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampleString {
    string public myString = "Hello worlds";

    function setMyStrings(string memory _myString) public {
        myString = _myString;
    }

    function compareTwoString(string memory _myString) public view returns  (bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }
}