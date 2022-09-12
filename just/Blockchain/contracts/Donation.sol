 //SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract Donation{
    struct Person{
        uint id ;
        string name;
        uint256 amount;
        address sender_address;//Donprs wallet address 
    }
    uint256 id=0;
    mapping(uint=>Person)public people;
    function addPerson(string memory name)public payable {
        id+=1;
        people[id]=Person(id,name,msg.value,msg.sender);
    }


}
