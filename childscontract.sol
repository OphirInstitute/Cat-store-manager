//SPDX-License-Identifier:MIT

  pragma solidity 0.8.7;

  import"./storageh.sol";

  contract childcatstorecontract is catstore {

      // +10
      // overridin the function
      //virtual & overide

      function storenoofcatbreeds(uint256 _noofcatbreeds) public override{
          noofcatbreeds = _noofcatbreeds + 10;
      }

  }
