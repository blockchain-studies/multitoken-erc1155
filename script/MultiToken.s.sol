// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {MultiToken} from "../src/MultiToken.sol";

contract MultiTokenScript is Script {
    MultiToken public multiToken;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        //
        vm.stopBroadcast();
    }
}
