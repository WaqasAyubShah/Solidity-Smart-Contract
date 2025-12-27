// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "./1_Storage.sol";

contract StorageFactory{
    //Call the contract from other and you can deply it from calling the function...
    Storage public myStorage;
    //Start with somple function
    function CreateSampleStorageFactroy() public {
        myStorage = new Storage();
    }
}