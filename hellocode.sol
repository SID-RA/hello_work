pragma solidity ^0.6.0;

contract studentfeestructure{
 
 
    // school fees structure
   struct Student{
       string name;
       uint age;
       string course;
       uint bankaccountsNumber;
       uint256 fee;
       uint rollNo;
       
       
   }
   
   uint noOfStudents;
   
   // mapping 
    mapping(string => Student)students;
   
   
    function set(string memory _name, uint _age, string memory _course, uint _bankaccountsNumber, uint256 _fee) public payable{
       require (_fee >= 2 ether );
       require(noOfStudents <= 10);
       
       uint addRollNo = noOfStudents + 1;
       students[_name] = Student (_name, _age, _course, _fee, _bankaccountsNumber, addRollNo);
       noOfStudents++;
        
    }
   function get(string memory _name)public view returns(string memory ,uint , string memory, uint, uint, uint ){
      Student memory sf = students[_name];
   return( sf.name ,sf.age, sf.course, sf.fee, sf.bankaccountsNumber, sf.rollNo);
   }
     function  
}
   
   