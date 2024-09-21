# Degen Gaming Token on AVAX C-Chain

The DegenToken is a smart contract developed on the Ethereum blockchain, specifically for use on the Fuji testnet. This contract incorporates ERC-20 standard functionalities and additional features such as token burning and item redemption.

## Description

DegenToken (`DGN`) allows users to interact with a virtual inventory system where tokens can be burned in exchange for items like "Degen Hat", "Techno Hoodie", and "Shield and Trophie". It is built using Solidity 0.8.20 and integrates OpenZeppelin's secure smart contract libraries. This contract aims to provide a straightforward example of advanced ERC-20 interactions including minting, burning, and managing token-based item ownership.

## Getting Started

### Installing

To interact with the DegenToken contract:
- Ensure you have a wallet set up that supports the Fuji testnet, such as MetaMask.
- The smart contract is deployed on the Fuji Testnet, available at this address: `0x3c2fF6162FA59e8E9f0934c38c80C80cA9860b9C`.

### Executing program

#### Interacting with the Contract
To interact with the contract, use a web interface like Remix or a script written with a library like web3.js. Below are general steps to interact using Remix:

1. Go to [Remix IDE](https://remix.ethereum.org/).
2. Create a new `.sol` file and paste the DegenToken contract code.
3. Compile the contract with Solidity compiler version 0.8.20.
4. Connect Remix to the Fuji testnet through your MetaMask.
5. Deploy the contract using the "Deploy & Run Transactions" tab in Remix, or interact with the already deployed contract at the given address.

Or you can:

* Head over to [Snowtrace](https://testnet.snowtrace.io/address/0x3c2fF6162FA59e8E9f0934c38c80C80cA9860b9C#code) using the contract address provided.
* Go to the "Contract" tab, then select "Write Contract."
* Connect your wallet to start interacting with the smart contract.

* **Important:** Don't forget to get free Testnet AVAX tokens from Fuji faucets to use with the contract.

#### Minting Tokens
Only the owner can mint new tokens:
```solidity
function mint(address to, uint256 amount) public onlyOwner
```

#### Redeeming Items
To redeem an item, ensure you have enough DGN tokens:
```solidity
function redeem(uint itemID) public returns(string memory)
```

## Help

If you encounter any issues:
- Ensure that your wallet is connected to the Fuji testnet.
- Check that you have sufficient gas to perform transactions.
- For detailed errors or help, consider reaching out to developer forums or the Solidity community.

## Authors

Sujitha

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.