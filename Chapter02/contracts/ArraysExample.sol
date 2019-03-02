pragma solidity 0.5.3;


contract ArraysExample {
    //Dynamic Array
    address[] public owners;

    constructor(address[] memory _owners) public {
        uint newLength;
        for (uint i = 0; i < _owners.length; i++) {
            newLength = owners.push(_owners[i]);
        }
        assert(newLength > 0);
    }

    function removeLast() public {
        //Check to ensure that array has element
        //Without this check, .length will have integer underflow.
        require(owners.length > 0);

        //Removes the last element from dynamic array
        owners.length--;
    }
}
