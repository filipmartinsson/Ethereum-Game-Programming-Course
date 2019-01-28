pragma solidity 0.5.0;

import "../lib/ERC1155.sol";
import "../lib/ERC1155Mintable.sol";

contract GameToken is ERC1155, ERC1155Mintable {
  constructor() public {

  }
}
