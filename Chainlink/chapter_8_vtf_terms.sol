
/**
 * what we learn
 * in this we learn about the Chainlink's VRF (verifiale random function) which give us a way to caluclate random
 * number off-chain and use it inchain
 * 
 * we chose a oracle and it give us a random number and then the cordinate contract verifiy if the number return is correct
 * we need to give some LINK in order to make it work
 * 
 *  our contract should inherit the VRFConsumerbase and pass VRFCOrdinatebase and Link Address in constactor;
 */


pragma solidity ^0.6.6;
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

// 1. Have our `ZombieFactory` contract inherit from the `VRFConsumerBase` contract
contract ZombieFactory is VRFConsumerbase{


    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    // 2. Create a constructor

    constructor() VRFConsumerBase(
    0xb3dCcb4Cf7a26f6cf6B120Cf5A73875B7BBc655B, 
    0x01BE23585060835E02B77ef475b0Cc51aA1e0709  
) public{

}

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

    function _generatePseudoRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

}
