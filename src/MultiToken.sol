// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.27;

import {ERC1155} from "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import {ERC1155Burnable} from "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @custom:security-contact jetherrodrigues@gmail.com
contract MultiToken is ERC1155, ERC1155Burnable, Ownable {
    constructor(address initialOwner) ERC1155("https://jetherrodrigues.dev.br") Ownable(initialOwner) {}

    function mint(address account, uint256 id, uint256 amount, bytes memory data) external payable onlyOwner {
        _mint(account, id, amount, data);
    }
}
