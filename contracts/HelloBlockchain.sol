// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HelloBlockchain {
    string public message;

    function setMessage(string memory _message) public {
        message = _message;
    }

    constructor() {
        setMessage("Hello Blockchain");
    }
}