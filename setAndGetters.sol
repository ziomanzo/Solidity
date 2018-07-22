pragma solidity ^0.4.0;


contract Person{     
    string name;     //state variable name
    uint age;        // state variable age
                     //uint is Unsigned integer, only positive numbers


    function getName() view returns (string) {           //getter with no input and a string as output.
        return name;  //return string name               //get the value of name and display
    }

    function getAge() view returns(uint){                //getter with no input and a Uint as output
        return age;                         
    }
    function setName(string _name) returns (string) {    //function setter to set user input for age
        name = _name;                                    // user input _name set to state variable name
    }

    function setAge(uint _age){          //function setter to set user input _age  to state variable age
        age = _age;
    }
}

//by Fabrice Manzo,   teachers: Ivan Liljeqvist and Filip Martinsson