pragma solidity ^0.4.0;  //version of solidity

contract setAndGetters {     //contract name
    
    
  string output = "my unchanged state variable defined in contract";
  // state variable
    
    function myGetter() view returns (string) {    //function without input and string as output
       
        return output;    //return string to variable output without changing anything
    }   
    
    function setOutput(string _output){
        output = _output;
        
    }   
    
}

//by Fabrice Manzo,   teachers: Ivan Liljeqvist and Filip Martinsson