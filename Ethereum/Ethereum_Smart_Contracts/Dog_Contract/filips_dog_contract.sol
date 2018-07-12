pragma solidity ^0.4.0;

contract DogContract {
    
    struct Dog {
        string name;
        uint8 age;
    }
    
    Dog[] dogs;
    
    mapping(address => uint) ownerOfDog;
    
    function addDog(string _name, uint8 _age) public {
        address owner = msg.sender;
        uint id = dogs.push(Dog(_name, _age));
        ownerOfDog[owner] = id;
    }
    
    function getDog() view public returns (string) {
        address owner = msg.sender;
        uint id = ownerOfDog[owner];
        return dogs[id-1].name;
    }
}