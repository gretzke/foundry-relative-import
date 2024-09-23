// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Vm} from "lib/forge-std/src/Vm.sol";

library Deploy {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    function permit2() public returns (address permit2_) {
        bytes memory bytecode = vm.readFileBinary("./bin/permit2.bin");
        assembly ("memory-safe") {
            permit2_ := create(0, add(bytecode, 0x20), mload(bytecode))
        }
    }
}
