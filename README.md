# AituSeAli Token (ASA)

AituSeAli (ASA) — is an ERC-20 token that includes the ability to track all transactions. Every time a transfer is made, the transaction information is stored in the contract.

## Description

This token is based on the ERC-20 standard, with an additional feature for tracking transaction history. Each transaction is recorded with details such as sender, recipient, amount, and timestamp.

## Functions

- **transfer(address recipient, uint256 amount)**: Transfers tokens to another user and records transaction information.
- **getTransactionDetails(uint256 index)**: Returns transaction details for an index.
- **getTotalTransactions()**: Returns the total number of transactions.
