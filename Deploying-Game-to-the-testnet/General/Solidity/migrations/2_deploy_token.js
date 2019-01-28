var GameToken = artifacts.require("./GameToken.sol");

module.exports = function(deployer) {
  deployer.deploy(GameToken, "GameToken", "GT", 10);
};
