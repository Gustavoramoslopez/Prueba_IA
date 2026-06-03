require("@nomicfoundation/hardhat-toolbox");
const { subtask } = require("hardhat/config");
const {
  TASK_COMPILE_SOLIDITY_GET_SOLC_BUILD,
} = require("hardhat/builtin-tasks/task-names");
const path = require("path");

// El binario nativo de solc se descarga de binaries.soliditylang.org, que en este
// entorno no esta en la allowlist de red. Para poder compilar, usamos el paquete npm
// "solc" (compilador wasm) instalado localmente y se lo pasamos a Hardhat como build
// local longVersion. En un entorno normal con internet, esto NO es necesario:
// basta con solidity: { version: "0.8.24" }.
subtask(TASK_COMPILE_SOLIDITY_GET_SOLC_BUILD, async (args, hre, runSuper) => {
  if (args.solcVersion === "0.8.24") {
    const compilerPath = path.join(__dirname, "soljson-v0.8.24.js");
    return {
      compilerPath,
      isSolcJs: true,
      version: args.solcVersion,
      longVersion: "0.8.24+commit.e11b9ed9",
    };
  }
  return runSuper();
});

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.24",
    settings: {
      optimizer: { enabled: true, runs: 200 },
      evmVersion: "cancun",
    },
  },
  networks: { hardhat: {} },
};
