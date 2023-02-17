# Solution for Level 4 - Telephone:

For this ethernaut level, given a contract which contains a function to change the owner of the contract given a condition where the tx.origin does not equal the message sender.

Tx.origin in this context means the EOA which originates the transaction. Should a EOA interact with a contract to contract another contract, the msg.sender will be recognized at the final destination contract as the contract that last interacted with said final destination contract. So to complete this level, we need to use an intermediary contract that will act as the msg.sender, but will allow the original EOA to remain as the tx.origin address.

Once we have created a contract that will interact with the contract we are attacking, we will call the function with our original EOA account. This will change the owner to the EOA account and we will have completed the level.
