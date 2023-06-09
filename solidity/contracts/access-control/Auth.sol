// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Auth {
  address private _administrator;

  constructor(address _deployer) {
    _administrator = _deployer;
  }

  function isAdministrator(address user) public view returns (bool) {
    return user == _administrator;
  }
}
