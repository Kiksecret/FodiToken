// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract FodiToken is ERC20 {
  
    constructor() public ERC20("FodiToken", "Fodi") {
      _mint(msg.sender, 2000000);
    }

    /** 
      * function food reward
    */
    function buy(uint256 _amount) public returns(bool sucess) {
      require(_amount != uint256(0), "transaction failed!");
    
      if(msg.sender.balance > _amount) {
	    _transfer(msg.sender, _amount);
        uint256 _reward = _amount > 150;
	    _mint(msg.sender, 2);
    }  
      else {
        return false;
    }

return true;
}

}
