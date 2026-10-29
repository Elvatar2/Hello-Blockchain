// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {HelloBlockchain} from "../contracts/HelloBlockchain.sol";

contract HelloBlockchainTest is Test {
    HelloBlockchain public myContract;

    function setUp() public {
        myContract = new HelloBlockchain();
    }

    function test_InitialMessage() public {
        assertEq(myContract.message(), "Hello Blockchain");
    }

    function test_SetMessage() public {
        myContract.setMessage("New Message");
        assertEq(myContract.message(), "New Message");
    }
}