const Commitee = artifacts.require("Commitee");

module.exports = function (deployer) {
  deployer.deploy(Commitee);
};
