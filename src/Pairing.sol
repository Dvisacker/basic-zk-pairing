// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Pairing {
    function run(bytes calldata input) public view returns (bool) {
        (bool success, bytes memory data) = address(0x08).staticcall(input);
        if (success) return abi.decode(data, (bool));
        revert("Wrong pairing");
    }
}
