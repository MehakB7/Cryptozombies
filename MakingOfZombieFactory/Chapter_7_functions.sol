/***
 * 
 * Chapter 7 : What we learn
 * Functions in solidity
 * 
 * syntax:
 * function funtionName() visibility-modifier returns(data type){}
 * 
 * visibility modifiers value
 * public : called from internal functions as well other contracts
 * private : called only from the contract 
 * internal: called by  other function in same contract as well contract which inherit the contract
 * external: called only by the external contract
 * 
 * 
 * other functicion modifiers are
 * payable: that is this function can recienve ethers
 * view: function is reading the storage but not updating storage
 * pure: function is neither reading nor writing from storage
 *  
 * 
 * we can also create our custom modifiers
 * 
 * defualt visibility-modifier: public
 *
 * }
 */

pragma solidity >=0.5.0 <0.6.0;
contract ZombieFactory{
   uint dnaDigits = 16;
   uint dnaModulus = 10 ** dnaDigits;
   struct Zombie{
    string name;
    uint dna;
   }
   Zombie[] public zombies;

   function createZombie(string memory _name,  uint _dna) public {

   }


}