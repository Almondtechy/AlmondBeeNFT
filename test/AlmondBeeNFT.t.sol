// SPDX-License-Identifier: MIT
pragma solidity ^O.8.20;

import "forge-std/Test.sol";
import "../src/AlmondBeeNFT.sol";

contract AlmondBeeNFTTEST is Test {
    AlmondBeeNFT nft;
    address user = address(1);

    function setUp() public {
        nft = new AlmondBeeNFT("ipfs://test/");
    }

    function testMintNFT() public {
        nft.mint(user);
        assertEq(nft.ownerOf(1), user);
    }

    function testOnlyOwnerCanMint() public {
        vm.expectRevert();
        vm.prank(user);
        nft.mint(user);
    }
}