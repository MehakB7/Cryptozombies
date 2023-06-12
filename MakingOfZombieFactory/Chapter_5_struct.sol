/***
 * 
 * Chapter 5 : What we learn
 * 1: struct is data type that is used to store more complex data type. 
 * similar to the struct of C and object of javascrip.
 * 
 * struct structName{
 *  datatype propertyName,
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

}