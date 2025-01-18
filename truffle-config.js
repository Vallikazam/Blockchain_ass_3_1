module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", // Localhost
      port: 8545,        // Ganache port
      network_id: "*",   // Any network ID
      gas: 6721975,
    },
  },
  compilers: {
    solc: {
      version: "0.8.20", // Убедитесь, что версия совпадает с вашей в Solidity
    },
  },
};
