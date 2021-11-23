// SPDX-License-Identifier: MIT

// Simple smart contract storing values

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    // this will get initialized to 0
    uint256 favouriteNumber;
    
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    
    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;
    
    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }
    
    function retreive() public view returns(uint256) {
        return favouriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({name: _name, favouriteNumber: _favouriteNumber}));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
