const hre = require("hardhat");

async function main() {
  const Upload = await hre.ethers.getContractFactory("Upload");
  const upload = await Upload.deploy();

  await upload.deployed();

  console.log(`REACT_APP_CONTRACT_ADDRESS=${upload.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
