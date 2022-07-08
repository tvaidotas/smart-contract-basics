// SPDX-License-Identifier: MIT
// all .sol files should start with a license declaration, can use MIT for oper source or UNLICENSED for private

// defines our compiler and the version of it
// ^ defines a range compile version after the non zero
// digit upwards to the next increment of the non zero number
pragma solidity ^0.8.4;

// very first step, like defining a class and all the code goes inside
// everything is explicitly declared
// contracts can be inherited
contract CryptoToken {

    // unassigned integer variable
    uint public tokens = 400;

}