// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract  SimpleStorage
{
    uint256 public favoriteNumber = 5;

    function store(uint256 _favoriteNumber) public
    {
        favoriteNumber = _favoriteNumber;
    }
 
    struct People
    {
        uint256 favoriteNumber;
        string name;
    }
    
    mapping(string=>uint256) public nameTofavoriteNumber;
    People [] people;
    
    function retrieve() public view returns(uint256)
    {
        return favoriteNumber; 
    }
 
    function addPerson(string memory _name, uint256 _favoriteNumber) public
    {
        people.push(People(_favoriteNumber,_name));
        nameTofavoriteNumber[_name]=_favoriteNumber;
    }

 
}
