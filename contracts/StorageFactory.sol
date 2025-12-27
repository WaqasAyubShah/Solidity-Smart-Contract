// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "./1_Storage.sol";

contract StorageFactory{
    //Call the contract from other and you can deply it from calling the function...
    //lets make an arry to be store if we deploy the contract multiple time..
    Storage[] public mylistofStorageContract;
    //Start with somple function
    function CreateSampleStorageFactroy() public {
        Storage myNewStorage = new Storage();
        mylistofStorageContract.push(myNewStorage);
    }

    //Now lets call the store function from storage function in the storagefactory
    //To check contract, we need address and ABI
    function sfStore(uint256 _samplestorageIndex, uint256 _samplestoragenumber ) public{
        Storage myStorageinArray = mylistofStorageContract[_samplestorageIndex];
        myStorageinArray.store(_samplestoragenumber);
    }

    function sfGet(uint256 _samplestorageIndex) public view returns(uint256){
        Storage myStorage = mylistofStorageContract[_samplestorageIndex];
        return myStorage.retrieve();
    }
}