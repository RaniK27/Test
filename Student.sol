pragma solidity ^0.8.0;

contract student_data {

    struct student {
        uint stud_id;
        string stud_name;
        string stud_dept;
    }

    student[] students;

    function add_student(uint id,string name,string memory dept )  public  {
        student stud= student(id,name,dept);
        students.push(stud);

    }

    function get_data(uint id) public view returns(string memory,string memory){
        for(uint i=0;i<students.length;i++){
            if(students[i].stud_id==id){
                return (students[i].stud_name,students[i].stud_dept);
            }
        }
        return ("Name not found","Department not found");

    }

    function get_balance() public view returns (uint){
        return address(this).balance;
    }

    fallback() external payable {
        students.push(student(1111,"ABC","DEF"));
    }

}



// contract sender{
//     function callfallback(address payable to) public payable{
//         (bool sent,)=to.call{value:msg.value}("");
//         require(sent,"Failed to send ");
//     }
    
// }
