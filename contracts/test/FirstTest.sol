
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

contract FirstTest {
    mapping (address => uint256)  _balances;

    mapping (address => mapping (address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;
    uint8 private _decimals;
    
}
