const hre = require("hardhat");
const CONTRACT_NAME = "SimidaPunksNFT";

async function main() {
  const SimidaPunksNFT = await hre.ethers.getContractFactory(CONTRACT_NAME);
  const simidaPunksNFT = await SimidaPunksNFT.deploy();

  await simidaPunksNFT.deployed();

  console.log(
    "SimidaPunksNFT deployed to :", simidaPunksNFT.address
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
  console.error(error);
  process.exit(1);
  });
