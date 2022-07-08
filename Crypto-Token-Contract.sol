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

    // mapping acts like a dictionary to store data
    // takes a key and value (key => value)
    mapping(address => uint) public balances;

    // Events allow clients to react to contract changes that you declare
    // one way logging of transactions
    // types of events: Sent, Transfer, Allow
    // events take two steps
    // setting it up
    // emitting the event

    // preconditioned arguments (inputs) we should pass
    // from to and amount are the preconditioned arguments
    event Sent(address from, address to, uint amount);

    function mint(address receiver, uint amount) public {
        // only the owner of this contract should be able to mint, this is ensured with require

        // checks the thruthyness within it's parentheses
        require(msg.sender == minter);
    }

    // gets called immediately when the contract is deployed
    // will only be called once
    constructor() {
        minter = msg.sender; // sets the address of the person deploying the contract
    }

}