pragma solidity^0.4.0;    //version of solidity



contract Database{    //Create a contract named Database And Track the owner of the data, so only the sender can retrieve his data
 
   struct Person {     //creating own datatype(Struct) Person
       string name;     // with these properties
       uint    age;
       string  sex;
       string info;
   }
   
   
 
   Person[] persons;
   //make an array of Person called: persons
  
  
   mapping(address => uint) ownerToPerson;
   // mapp an adress to an integer, so we can use it as index in an array
  
   
   
   //Setter function to add a person. with input variables (used in struct)
   function addPerson(string _name, uint _age, string _sex, string _info){
       
       //set adress of sender to 'owner' of datatype Person.
       address owner = msg.sender;
       
       // Push input for the transactor into the persons array. 
       //This will return the id of the person in the list (index array)
       uint id = persons.push(Person(_name, _age, _sex,_info));
       
     // Id after push is a variable to know the owner of pushed data (uint)
       ownerToPerson[owner]=id;   //ID returned after push, is set to Owners mapped addres.
       
   }
   

   function getName() view returns (string){         //getters to return Person properties
       address owner = msg.sender;
       uint id = ownerToPerson[owner];
       return persons[id - 1].name; // -1  becos array start with zero, and above started with 1
   }
   function getAge() view returns (uint){
       address owner = msg.sender;
       uint id = ownerToPerson[owner];
       return persons[id - 1].age;
   }
   function getSex() view returns (string){
       address owner = msg.sender;
       uint id = ownerToPerson[owner];
       return persons[id - 1].sex;
   }
       
    function getInfo() view returns (string){
       address owner = msg.sender;
       uint id = ownerToPerson[owner];
       return persons[id - 1].info;
   }
}

//by Fabrice Manzo,   teachers: Ivan Liljeqvist and Filip Martinsson
