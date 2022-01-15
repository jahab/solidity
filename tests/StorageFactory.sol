// SPDX-Licence_Identifier : MIT
pragma solidity ^0.6.0;

import "./SimpleStorage.sol";
contract StorageFactory
{
    SimpleStorage [] public simpleStorageArray;
    
    function CreateSimpleStorageContract() public 
    {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sFstore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet

}