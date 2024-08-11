const hre = require("hardhat");

async function main() {
  // Get the network
  const network = await hre.ethers.provider.getNetwork();
  console.log(`Deploying to network: ${network.name}`);

  const Degen = await hre.ethers.getContractFactory("DegenToken");

  const degen = await Degen.deploy();
  await degen.deployed();

  console.log(`Degen contract deployed to ${degen.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});