# // Public variables
    string public tokenName = "Laure04";
    string public tokenAbbreviation = "LRE";
    uint public totalSupply = 0;
    uint public minimumMintable = 100;

  # // mapping variable
    mapping(address => uint) public balances;

   # // mint function
    function mint(address _address, uint _value) public {
        
  #  // Executing a require() statement
        require(_address == msg.sender, "One person can only make tokens.");

   # // Implementing a revert() statement
        if (_value < minimumMintable) {
            revert("Small token mintable amount includes to be reached or exceeded.");
        } else {
            totalSupply += _value;
            balances[_address] += _value;
        }         
    }

 #   // burn function
    function burn(address _address, uint _value) public {

  #   // Executing a assert() statement
        assert(balances[_address] >= _value);
        totalSupply -= _value;
        balances[_address] -= _value;
    }    
}
