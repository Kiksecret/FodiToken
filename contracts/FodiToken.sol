// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract FodiToken is ERC20 {
    string public name = "FodiToken";
    string public symbol = "Fodi";
    uint8 public decimal = 6;
    uint public INITIAL_SUPPLY = 2000000;

    constructor() public {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}