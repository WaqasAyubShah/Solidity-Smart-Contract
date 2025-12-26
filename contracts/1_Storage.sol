// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {

    //general declaration way will be 
    //Type visibality name 

    uint256 number;
    
    struct Person{
        uint256 fvrtNumber;
        string name;
    }

    //Dynamic arrays
    Person[] public listofPeoples;

    //Mapping
    mapping(string => uint256) public nametofvrtNumber;

    // //Now lets call struct and save some data;
    // Person public jhon = Person({fvrtNumber: 5, name: "jhon"});
    // Person public wiki = Person({fvrtNumber: 7, name: "wiki"});
    // //The problem with struct is we have to call it again and again. 
    // //to handle this we can use arrays.

    //lets add data to array where we have two methodes. 
    //One is calling the instant first and then passing it to the array
    // function addPerson(uint256 _fvrtNumber, string memory _name) public{
    //     Person memory newPerson = Person(_fvrtNumber , _name);
    //     listofPeoples.push(newPerson);
    // }
    
   
    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }

    //calldata, memory, storage 
    function addPerson(uint256 _fvrtNumber, string memory _name) public{
        //_name = "hayat";
        listofPeoples.push(Person(_fvrtNumber, _name));
        nametofvrtNumber[_name] = _fvrtNumber;
    }
    //calldata can't be change, but memory and storage can be change, while storage is used for long term storage
    //memory is used as temprary var. 
}