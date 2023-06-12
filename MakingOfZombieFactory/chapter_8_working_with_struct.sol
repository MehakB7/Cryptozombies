/***
 * 
 * Chapter 7 : What we learn
 * initializing struct 
 * ex: struct Student{string name, uint age}
 * Student student = Student("Ash", 10); when we declare a student like this inside a function
 * it's stored as storage
 * and will stored in blockchain
 * 
 * Student memory student = Student("ASh", 10)
 * when we do this inside a function it will create a temp student which is not stored in the 
 * blockchain 
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

   function createZombie(string memory _name,  uint _dna) public {
     zombies.push(Zombie(_name, _dna));


   }


}