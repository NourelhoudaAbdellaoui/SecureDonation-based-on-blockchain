const Donation = artifacts.require("Donation");

module.exports = function (deployer) {
  deployer.deploy(Donation);
};
