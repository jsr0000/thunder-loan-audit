// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

interface ITSwapPool {
    // @audit-Question: Why are we only using the price of a pool token in weth?
    function getPriceOfOnePoolTokenInWeth() external view returns (uint256);
}
