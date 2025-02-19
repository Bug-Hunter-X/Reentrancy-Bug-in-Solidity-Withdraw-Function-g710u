```solidity
function withdraw() public {
  uint balance = address(this).balance;
  require(balance > 0, "Insufficient funds");
  payable(msg.sender).transfer(balance);
}
```
This code has a reentrancy bug.  A malicious contract could call `withdraw()` multiple times before the `transfer` completes, draining all funds.