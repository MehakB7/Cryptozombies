/***
 * 
 * Chapter 3 : What we learn
 * 1. about the storage which is the permant storage which is actually
 * being stored in the chain
 * 
 * Integers datatype 
 * in solidty we have int and uint(unsigned interger). int and uint is abbrivation for int256 and uint256 respectively
 * can be decleared with less bit : 8,16, 32 etc 
 * int range from 0 to 2^255
 * 
 * in solidity we have to add ; after statement else gives error 
 * 
 * datatype visiblity-modifier variable
 * ex: uint public dnaDigit ;
 * the default visiblity-modifier is private
 * 
 * state variables have 3 visiblity-modifier : private internal and public
 * 
 */

pragma solidity >=0.5.0 <0.6.0;
contract ZombieFactory{
    uint dnaDigits = 16;
}