# Solution for Level 1

The goal of this level of ethernaut is to gain control of the contract and make the user's address the owner of the contract. If we look at the contents of the said contract, we will notice there is a function called fallback that will allow for the change of owner by activating it.

A Fallback function is a specific function within a solidity contract that activates when ether is sent to a contract without any function calls. So to access this function all we need to do is transfer ether directly to the contract. We will not need to create any contract to interact with the original contract, but instead will just need to send ether to the contract via metamask.
