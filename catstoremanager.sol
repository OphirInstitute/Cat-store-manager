//SPDX-License-Identifier:MIT

pragma solidity 0.8.7;

import "./storageh.sol";
    

contract catstoremanager {

    catstore[] public  CatStoreArray;

    function createcatstoremanager () public {

        catstore CatStore = new catstore();
        CatStoreArray.push(CatStore);
    }

    function scstore(uint256 _CatStoreIndex, uint256 _CatStoreNumber) public {

    //get the storenoofcatbreeds contract object

    catstore CatStore = CatStoreArray[_CatStoreIndex];
    
    //call our storenoofcatbreedsfunction

    CatStore.storenoofcatbreeds(_CatStoreNumber);

    }

   function rcRead(uint256 _CatStoreIndex) public view returns(uint256) {

    //get the readnoofcatbreeds contract object

    catstore CatStore = CatStoreArray[_CatStoreIndex];

    return CatStore.readnoofcatbreeds();

    
     }
}

