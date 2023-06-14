/***
 * 
 * Chapter 10 : What we learn
 * about function modifier : view, pure
 * Return type can write returns(varible type name)
 * incase varaible is refernce type we have to mention if it's memory or calldata
 * 
 * 
 *
 * }
 */

pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

    function _generateRandomDna(string memory _str)private  view returns (uint){

    }

   

}
