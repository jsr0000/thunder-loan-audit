// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IThunderLoan {
    // @audit-Low/Informational: Incorrect parameter type being passed
    function repay(address token, uint256 amount) external;
}
