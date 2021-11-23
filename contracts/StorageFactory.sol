// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

// This contract creates an array and interacts with the SimpleStorage contract by adding every new 
// contract created into that array. You can store and retrive values based on a particular index 
// through the contract's address

contract StorageFactory{
     SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public {
        
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    
    function stStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }
    
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retreive();
    }
    
}
