// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Test, console2} from "forge-std/Test.sol";
import {Deploy} from "lib/deployer-test/src/Deploy.sol";

contract DeployTest is Test {
    function test_shouldDeployPermit2() public {
        address permit2 = Deploy.permit2();
        console2.log("permit2", permit2);
    }
}
