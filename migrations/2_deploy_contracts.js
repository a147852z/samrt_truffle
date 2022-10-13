var HelloWorld = artifacts.require("HelloWorld");

module.exports = function(deployer) {
  deployer.deploy(HelloWorld, "0x15458ef540ade6068dfe2f44e8fa733c", "0x15458ef540ade6068dfe2f44e8fa734c");
};

