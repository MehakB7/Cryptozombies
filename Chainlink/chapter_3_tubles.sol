/**
 *Read about the tubles when we have a function that return more then one value we can retrive those values
 using tubles. 
 Make sure the we are using same order of varaible in which they are returend
 (uint z, int y) = something();
 incase we don't want all the varaibls returned by function we can not use a variable
 (, int y) = something();

 */


pragma solidity ^0.6.7;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
  AggregatorV3Interface public priceFeed;

  constructor() public {
    priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
  }

 function getLatestPrice() public view returns(int){
      (,int price,,,) = priceFeed.latestRoundData();
       return price;

 }

}
