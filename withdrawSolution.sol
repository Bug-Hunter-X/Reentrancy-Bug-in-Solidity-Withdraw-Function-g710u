```solidity
function withdraw() public {
  uint balance = address(this).balance;
  require(balance > 0, "Insufficient funds");
  (bool success, ) = payable(msg.sender).call{value: balance}('');
  require(success, "Transfer failed");
}
```