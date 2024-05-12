// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Laure04 {
    string public tokenName = "Laure04";
    string public tokenAbbreviation = "LRE";
    uint public totalSupply = 0;
    uint public minimumMintable = 100;

    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        // Ensure the caller is the address trying to mint tokens
        require(_address == msg.sender, "One person can only make tokens.");

        // Ensure the value is greater than or equal to the minimum mintable amount
        require(_value >= minimumMintable, "Mintable amount must be reached or exceeded.");

        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        // Ensure the address has enough tokens to burn
        require(balances[_address] >= _value, "Insufficient balance to burn tokens.");

        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
