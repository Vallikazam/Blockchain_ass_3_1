// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AituSeAli is ERC20 {
    struct TransactionDetails {
        address sender;
        address receiver;
        uint256 amount;
        uint256 timestamp;
    }

    TransactionDetails[] private transactions;

    constructor() ERC20("AituSeAli", "ASA") {
        _mint(msg.sender, 2000 * 10 ** decimals());
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transfer(recipient, amount);

        if (success) {
            transactions.push(TransactionDetails({
                sender: msg.sender,
                receiver: recipient,
                amount: amount,
                timestamp: block.timestamp
            }));
        }

        return success;
    }

    function getTransactionDetails(uint256 index) external view returns (
        address sender,
        address receiver,
        uint256 amount,
        uint256 timestamp
    ) {
        require(index < transactions.length, "Invalid index");
        TransactionDetails memory txDetails = transactions[index];
        return (
            txDetails.sender,
            txDetails.receiver,
            txDetails.amount,
            txDetails.timestamp
        );
    }

    function getTotalTransactions() external view returns (uint256) {
        return transactions.length;
    }
}