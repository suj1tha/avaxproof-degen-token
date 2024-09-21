// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    mapping(address => mapping(uint => uint)) public itemOwnership;

    mapping(uint => string) public itemInventory;

    constructor() ERC20("Degen", "DGN") {
        itemInventory[1] = "Degen Hat";
        itemInventory[2] = "Techno Hoodie";
        itemInventory[3] = "Shield and Trophie";
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function checkBalance() public view returns(uint) {
        return this.balanceOf(msg.sender);
    }

    function transferDegen(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }

    function redeem(uint itemID) public returns(string memory) {
        require(keccak256(abi.encodePacked(itemInventory[itemID])) != keccak256(abi.encodePacked("")), "Item does not exist");

        uint burnAmount;
        if (itemID == 1) {
            burnAmount = 5;
        } else if (itemID == 2) {
            burnAmount = 10;
        } else if (itemID == 3) {
            burnAmount = 50;
        }

        require(balanceOf(msg.sender) >= burnAmount, "Insufficient DGN tokens");
        _burn(msg.sender, burnAmount);

        itemOwnership[msg.sender][itemID]++;

        return string(abi.encodePacked("Congrats on your ", itemInventory[itemID], "!"));
    }

    function burnDegen(uint amt) public {
        require(balanceOf(msg.sender) >= amt, "Insufficient balance to burn");
        _burn(msg.sender, amt);
    }

    function checkItemsOwned(uint itemID) public view returns (uint) {
        return itemOwnership[msg.sender][itemID];
    }
}
