# Project Title
Solidity-Error-Handling

# Description
A basic smart contract in which each of the functions 
that follow is executed: revert(), assert(), and require().

# Getting Launched
Installing Remix Online IDE
- Complete all required installations ahead of time.
- Get "ErrorHandling.sol" from the original file and transfer it.
- Go to https://remix.ethereum.org to start the IDE.

# Using Remix to run a program
- Create folder inside Remix.
- Duplicate the unedited content from ErrorHandling.sol and insert it into the new file.
- Click on the "Solidity Compiler" button to build the contract.
- Click on the "Deploy and Run transactions" button to configure the smart contract.
- After a successful launch, examine the user interface for contract interaction.
- To establish connections, duplicate addresses that are formatted as 0x5B3...eddC4 (100 ether).
- Evaluate the functionalities of the smart contract to assess the implementation of issue management.

# Code Snippet

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


# Author
Heleana V. Laure
Email: 8213709@ntc.edu.ph
