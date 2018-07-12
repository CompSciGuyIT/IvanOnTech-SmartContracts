pragma solidity ^0.4.24;

contract DogContract {
    
    struct Dog {
        string name;
        uint8 age;
    }
    
    Dog[] dogs;
    
    mapping(address => uint) ownerOfDog;
    
    function addDog(string _name, uint8 _age) public {
        ownerOfDog[msg.sender] = dogs.push(Dog(_name, _age)) - 1;  // What is returned is 1 greater than the index in the array;
    }
    
    function getDog() view public returns (string) {
        return dogs[ownerOfDog[msg.sender]].name;
    }
}