// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract exampleMapping {
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public AddressMapping;

    mapping(uint => mapping (uint => bool)) public uintuintMApping;

    function setValue (uint _index) public {
        myMapping[_index] = true;
    }
    
    function setAddess () public {
        AddressMapping[msg.sender] = true;
    }

    function setUintuintMapping(uint _key1, uint _key2, bool _value)  public {
        uintuintMApping[_key1][_key2] = _value;
    }
}
