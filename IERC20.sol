// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface IERC20{
    function name() external view returns(string memory);

    function symbol() external view returns(string memory);

    function decimals() external pure returns(uint);

    function totalSupply() external view returns(uint);

    function balanceOf(address account) external view returns(uint);

    function trancfer(address to, uint amount) external;

    function allowance(address _owner, address spender) external view returns(uint); // разрешение списать определенное колличество токенов у владельца

    function approve(address spender, uint amount) external;

    function trancferFrom(address sender, address recipient, uint amount) external; // Забирает с указанного кошелька какое-то количество токенов в пользу другого получателя

    event Transfer(address indexed from, address indexed to, uint amount);

    event Approve(address indexed owner, address indexed to, uint amount);
}