//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/// @title BoxV2
/// @author Johnson
/// @notice This is a small upgradable contract

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";



contract BoxV2 is   UUPSUpgradeable {
    uint256 internal number;


    function setNumber(uint256 _number) external {}

    function getNumber() external view returns (uint256) {
        return number;
    }

    function version() external pure returns(uint256){
        return 2;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
} 