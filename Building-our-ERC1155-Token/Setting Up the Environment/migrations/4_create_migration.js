var Marketplace = artifacts.require("./Marketplace.sol");
var Token = artifacts.require("./Token.sol");

module.exports = (deployer, network, [owner]) => deployer
  .then(() => createToken1())
  .then(() => createToken2())
  .then(() => createToken3())
  .then(() => mintTokens());

async function createToken1(){
  (await Token.deployed()).create(0, "");
}

async function createToken2(){
  (await Token.deployed()).create(0, "");

}

async function createToken3(){
  (await Token.deployed()).create(0, "");
}
function mintTokens(){
  Token.deployed().then(instance => {
    instance.mint(1, [Marketplace.address], [30]);
    instance.mint(2, [Marketplace.address], [20]);
    instance.mint(3, [Marketplace.address], [10]);
  });
}
