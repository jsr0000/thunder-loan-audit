// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

// @audit-explainer - this is the interface for the TSwap PoolFactory.sol contract
// @audit-question - why are we using TSwap?
interface IPoolFactory {
    function getPool(address tokenAddress) external view returns (address);
}
