pragma solidity >=0.5.0;

/// @title Callback for OctiswapPoolActions#flash
/// @notice Any contract that calls OctiswapPoolActions#flash must implement this interface
interface OctiswapFlashCallback {
    /// @notice Called to `msg.sender` after transferring to the recipient from OctiswapPool#flash.
    /// @dev In the implementation you must repay the pool the tokens sent by flash plus the computed fee amounts.
    /// The caller of this method must be checked to be a OctiswapPool deployed by the canonical OctiswapFactory.
    /// @param fee0 The fee amount in token0 due to the pool by the end of the flash
    /// @param fee1 The fee amount in token1 due to the pool by the end of the flash
    /// @param data Any data passed through by the caller via the OctiswapPoolActions#flash call
    function OctiswapFlashCallback(
        uint256 fee0,
        uint256 fee1,
        bytes calldata data
    ) external;
}
