// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Pairing} from "../src/Pairing.sol";

contract DeployPairing is Script {
    Pairing public pairing;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        pairing = new Pairing();

        vm.stopBroadcast();
    }
}
