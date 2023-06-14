
/***
 * 
 * Chapter 11 : What we learn
 * Learn about the keccak256 which is a version of SHA-3 hash which is used to create the hash
 * 
 * donw the explicite typecastin to do so we do type(varaible)
 * Ex: uint(varible_name) will typecast this into uint
 * 
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

    function _generateRandomDna(string memory _str) private view returns (uint) {
        // start here
        uint rand = uint( keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

}
