
// Replace <TYPE> by your type. Exemples of common type are address, uint, string, bool, bytes or struc. Please refer to the official documentation : https://solidity-fr.readthedocs.io/fr/latest/types.html

// This mapping is performed from an address, but can be performed from other types. For example, if you want to map from an uint, you must replace all "addresse" by "uint".

pragma solidity ^0.8.19;
mapping(address => <TYPE>[]) public mapToArrayOfAddress;

function getArrayFromMapping(address _address) external view returns(<TYPE>[] memory){
        <TYPE>[] memory temp = new <TYPE>[](mapToArrayOfAddress[_address].length);
        for (uint32 i = 0; i < mapToArrayOfAddress[_address].length; i++) 
        {
            temp[i] = mapToArrayOfAddress[_address][i];
        }
        return temp;
    }
