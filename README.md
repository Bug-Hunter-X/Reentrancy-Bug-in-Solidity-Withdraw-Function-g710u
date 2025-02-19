# Reentrancy Vulnerability in Solidity

This repository demonstrates a common reentrancy vulnerability in Solidity smart contracts and its solution.  The `withdrawBug.sol` file contains vulnerable code, while `withdrawSolution.sol` provides a secure implementation.

**Vulnerability:**
The vulnerable contract allows a malicious contract to repeatedly call the `withdraw` function before the transfer is complete, leading to the complete draining of funds.

**Solution:**
The solution uses a check-effects-interaction pattern to mitigate the vulnerability.  Funds are transferred after all state changes are complete.