# Solution for Level 2

To pass this level, you need to gain control of the contract by putting your address as the owner of the contract. While looking at the contract you need to note that the compiler version of solidity that is used for this level is below 0.6.0. This means that one of the features of this version of the compiler is that a constructor function can be created by creating a function with the same name as the contract.

If we look closely at the constructor function, the function name is not fully matching the name of the contract. Instead of this becoming a constructor function, it becomes a normal function that can be called externally by other EOA's and contracts. So to beat this level we just need to send a call to this function, which will change the contract's owner to the caller's address. You can either use remix to call the contract, or use ethers/web3.js to send a call transaction to the contract to win the level.
