
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "./BeforeAfter.sol";
import {Properties} from "./Properties.sol";
import {vm} from "@chimera/Hevm.sol";

abstract contract TargetFunctions is BaseTargetFunctions, Properties, BeforeAfter {

    function counter_increment() public {
      try counter.increment() {} catch {
        t(false, "Counter increment failed");
      }
    }

    function counter_setNumber(uint64 newNumber) public {
      counter.setNumber(newNumber);
    }
}
