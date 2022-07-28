// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract HMDToken is ERC20 {
    uint256 private _initialSupply;

    constructor(uint256 initialSupply) ERC20("Hammad", "HMD") {
        _mint(msg.sender, initialSupply);
        _initialSupply = initialSupply;
    }

    function getInitialSupply() public view returns (uint256) {
        return _initialSupply;
    }
}
