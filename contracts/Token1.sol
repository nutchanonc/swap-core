pragma solidity =0.5.16;

import '@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol';
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Token1 is ERC20Detailed, ERC20 {
    constructor() ERC20Detailed('Token1', 'TK1', 18) public {
        _mint(msg.sender, 1000000000);
    }
    function faucet(uint _amount) public returns (bool){
        _mint(msg.sender, _amount);
        return true;
    }
}