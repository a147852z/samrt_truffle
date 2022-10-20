// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0; //solc的版本

contract SimpleToken {
  uint INITIAL_SUPPLY = 10000;
  mapping(address => uint) balances;

  constructor() {
    balances[msg.sender] = INITIAL_SUPPLY;
  }

  // transfer token for a specified address
  function transfer(address _to, uint _amount) public {
    require(balances[msg.sender] > _amount);
    balances[msg.sender] -= _amount;
    balances[_to] += _amount;
  }

  // Gets the balance of the specified address
  function balanceOf(address _owner) public view returns (uint) {
    return balances[_owner];
  }
}

