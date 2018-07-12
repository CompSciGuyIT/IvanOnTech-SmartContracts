pragma solidity ^0.4.24;

contract Person {
    string name;
    uint8 age;
    
    function setAge(uint8 _age) public {
        age = _age;
    }
    
    function setName(string _name) public {
        name = _name;
    }
    
    function getAge() public view returns (uint8) {
        return age;
    }
    
    function getName() public view returns (string) {
        return name;
    }
}