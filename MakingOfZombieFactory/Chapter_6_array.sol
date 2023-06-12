/***
 * 
 * Chapter 6 : What we learn
 * In solditiy we have fixed length array and dynamic array
 * Fixed Length Array
 * datatype [length] varaible name
 * 
 * dynamic length array
 * datattype[] varaible name
 * 
 * Array methods
 * push: push one element at end
 * pop: remove one element from end
 * 
 * properties 
 * length: give the size of array
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
}