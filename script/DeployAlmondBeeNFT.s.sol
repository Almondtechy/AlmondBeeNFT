// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/AlmondBeeNFT.sol"; // 

contract DeployAlmondBeeNFT is Script {
    function run() external {
        vm.startBroadcast();
        new AlmondBeeNFT("ipfs://bafybeigpihwjhhde7x24ud72jkf257wqmuho2dg3is66idyrflblgw7h3q/1.json");
        vm.stopBroadcast();
    }
}