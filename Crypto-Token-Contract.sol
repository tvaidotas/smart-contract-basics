// SPDX-License-Identifier: MIT

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

    // only want the msg.sender (the current caller)(us essentially) to be able to mint tokens
    address public minter;

    // other visibility modifiers are: internal, external, private, public

    // gets called immediately when the contract is deployed
    // will only be called once
    constructor() {
        minter = msg.sender; // sets the address of the person deploying the contract
    }

}