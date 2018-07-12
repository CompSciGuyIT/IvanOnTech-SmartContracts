pragma solidity ^0.4.24;

contract Humans {
    
    struct Person {
        string name;
        uint8 age;
    }
    
    Person[] people;
    
    function addPerson(string _name, uint8 _age) public {
        people.push(Person(_name, _age));
    }
    
    function getAverageAge() view public returns (uint) {
        uint total_ages = 0;
        
        for (uint index = 0; index < people.length; index++) {
            total_ages += people[index].age;
        }
        
        return total_ages / people.length;
    }
}