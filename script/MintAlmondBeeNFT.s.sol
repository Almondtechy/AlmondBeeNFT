//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/AlmondBeeNFT.sol";

contract MintAlmondBeeNFT is Script {
    function run() external {
        vm.startBroadcast();
        AlmondBeeNFT nft = AlmondBeeNFT(0x8BC6FF6031bA1661dAfc51917b30E45cD1A3f7ee);
        nft.mint(0x7ac6E2518C2BBF1609605ac87a13BeA24Cc3439A);
        vm.stopBroadcast();
    }
}