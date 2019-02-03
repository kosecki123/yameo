pragma solidity ^0.5.0;


contract Storage {
  uint public slot1;
  uint16 public slot2;
  uint32 public slot3;
  uint32 public slot4;
  uint256 public slot6;

  event slot5(uint slot5);

  constructor() public {
    slot1 = 8;
    slot2 = 16;
    slot3 = 32;
    slot4 = 64;
  }

  function eventStorage(uint n) public {
    emit slot5(n);
  }

  function store(uint n) public {
    slot6 = n;
  }
}
