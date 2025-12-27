// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import {Storage} from "./1_Storage.sol";

contract AddFivetoStore is Storage{
    //let say hello to the old Storage contract first
    // function sayHello() public pure returns(string memory){
    //     return "Hello";
    // }

    //virtual and override
    function store(uint256 _newNumber) public override {
        number = _newNumber + 5;
    }
}