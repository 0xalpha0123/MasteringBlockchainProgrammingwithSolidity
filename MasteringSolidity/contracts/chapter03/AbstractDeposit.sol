pragma solidity 0.5.3;


contract AbstractDeposit {
    function depositEther() public payable returns (bool);
}


contract DepositHolderImpl is AbstractDeposit {

    mapping(address => uint) public deposits;

    function depositEther() public payable returns (bool) {
        deposits[msg.sender] += msg.value;
    }
}
