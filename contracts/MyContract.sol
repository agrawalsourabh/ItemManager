// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    uint data;

    address owner;

    constructor()  {
        owner = msg.sender;
    }

    function setData(uint _data) public {
        data = _data;
    }

    function getData() public view returns(uint){
        return data;
    }

    function getOwner() public view returns(address){
        return owner;
    }

    function isOwner() public view returns(bool){
        return msg.sender == getOwner();
    }

    function getCaller() public view returns(address){
        return (msg.sender);
    }
}
