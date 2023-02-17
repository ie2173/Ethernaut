# Solutions ofr Level 3 - Coinflip:

The objective of this level of Ethernaut is to defy statistics and accurately predict 10 coinflips consecutively. The contract to exploit allows an EOA or outside contract to choose between a boolean input representing a coin toss, with 0 representing heads and 1 representing tails. Since the contract does not use a random number generator(RNG) to determine the outcome, but a pseudo RNG function; it is vunerable to prediction and an attack by a hacker, us.

By examining the code use to create the pseudo RNG, we can see that it takes the blocknumber of the block that the transaction is mined on, and uses that in an algorithm to determine a boolean value. We can exploit this by recreating the algorithm in our own contract and passing that as an input into the contract's coinflip function. We then run this transaction 10 times until the quota is reached and we have completed the level!
