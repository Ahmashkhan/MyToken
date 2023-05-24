# MyToken
This solidity program is a amash token code deployed on the ethereum blockchain, which consists of the basic functions of a token, which are described in the description.

# Description

This program is written in solidity, a programming language used for developing smart contracts on the ethereum blockchain.
1.The contract includes public variables tokenname, tokenabbrevation, and totalSupply to store the details about the token.
2.The balances mapping maps addresses to their token balances.
3.The mint function takes an address _address and a value _value as parameters. It increases the totalSupply by _value and increases the balance of the _address by that amount.
4.The burn function takes an address _address and a value _value as parameters. It checks if the _address has a sufficient balance to burn the given _value. If yes, it deducts the _value from the totalSupply and the balance of the _address.
5.The burn function includes a requirement to ensure that the balance of the _address is greater than or equal to the amount that is supposed to be burned. If the condition fails, the function reverts with an error message.

# Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "^0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the available functions. Click on the "MyToken" contract in the left-hand sidebar, and then click on the mint option then add the address which is available for free on remix, then add the value, then click mint congratulations you have minted the tokens to the specific address now paste the same address in the balance tab it will show you your minted balance and you can deduct coins by following the same procedure in burn function.


# Authors
Ahmash khan

# License
This project is licensed under the MIT License, see the LICENSE.md file for details
