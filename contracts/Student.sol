pragma solidity ^0.5.0;

contract Student {
    string name;
    uint public projectCount = 0;
    uint publicprojectCount = 0;
    struct Project{
        uint task;
        string name;
        bool done;
    }
    mapping(uint => Project ) public projects;
    function addProject(string memory _project) public{ 
        projectCount++;
        projects[projectCount] = Project(projectCount,_project,false) ;
    }
    function validateProject(uint _id) public{
        projects[_id].done = true;
    }
}