pragma solidity >=0.4.22 <0.6.0;

contract Accounts {
  address owner;

  constructor() public {
    owner = msg.sender;
  }
  
  function add(uint a, uint b) public view returns(uint) {
    require(msg.sender == owner, "Only owner can use this function");

    return a + b;
  }
}