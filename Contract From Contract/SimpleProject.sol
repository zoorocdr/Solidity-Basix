//SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimplePROJECT{
    uint256 myNum;
    struct Class{
        string Name;
        uint256 RollNo;
    }
    function store(uint _myNum) public{
        myNum=_myNum;
    }
    function retrieve() public view returns(uint256){
        return myNum;
    }
    Class[] public students;
    mapping(uint256=>string) public enterRollNo;

    function addStudent(string memory _Name,uint _RollNo) public {
        students.push(Class(_Name,_RollNo));
        enterRollNo[_RollNo]=_Name;
    }
}
