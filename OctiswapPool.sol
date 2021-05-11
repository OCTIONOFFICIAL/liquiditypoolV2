pragma solidity >=0.5.0;

import './pool/OctiswapPoolImmutables.sol';
import './pool/OctiswapPoolState.sol';
import './pool/OctiswapPoolDerivedState.sol';
import './pool/OctiswapPoolActions.sol';
import './pool/OctiswapPoolOwnerActions.sol';
import './pool/OctiswapPoolEvents.sol';

/// @title The interface for a Octiswap Pool
/// @notice A Octiswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface OctiswapPool is
    OctiswapPoolImmutables,
    OctiswapPoolState,
    OctiswapPoolDerivedState,
    OctiswapPoolActions,
    OctiswapPoolOwnerActions,
    OctiswapPoolEvents
{

}
