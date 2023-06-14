/***
 * 
 * Chapter 8 : What we learn
 * Learn about the funtion specifier and made our fucntion private 
 * 
 * naming convention to make anything private we use the _varible or _function_name
 * 
 * 
 * 
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

   function _createZombie(string memory _name,  uint _dna) private {
     zombies.push(Zombie(_name, _dna));


   }


}