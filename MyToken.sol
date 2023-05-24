/*
       REQUIREMENTS
    1. Our contract will have public variables that store the details about our coin (Token Name, Token Abbrvevation, Total Supply)
    2. Our contract will have a mapping of addresses to balances (address => uint)
    3. we will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Our contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, our burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public tokenName = "AMASH";
    string public tokenAbbrevation = "AMH";
    uint public totalSupply = 0;
    
    mapping(address => uint) public balances;
 
    function mint (address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }
   
    function burn (address _address, uint _value) public {
        if (balances[_address] >= _value) {
        totalSupply -= _value;
        balances[_address] -= _value;
        }
    }
}
