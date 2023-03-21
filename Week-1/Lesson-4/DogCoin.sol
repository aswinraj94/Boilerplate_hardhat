// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract DogCoin{

    uint256 TotalSupply = 2000000; 
    address owner;
    mapping (address=>uint256) balances;
    struct Payment{
        uint256 transferAmount;
        address recipientAddress;
    } 

    mapping (address=>Payment[]) public UserPaymentArray ;

    event SupplyChanged (uint256);

    event TransferSucess (uint256,address);

    modifier OnlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor(){
        owner=msg.sender;
        balances[owner]=TotalSupply;
    }

    function GetTotalSupply() public view returns(uint256){
        return TotalSupply;
    }

    function AddTotalSupply() public OnlyOwner{
        TotalSupply+=1000;
        emit SupplyChanged (TotalSupply);
    }

     function GetBalance(address WalletAddress) public view returns(uint256){
        return balances[WalletAddress];
    }   

     function transfer(uint256 amount,address ReceiverAddress) public {
        balances[ReceiverAddress]+=amount;
        balances[msg.sender]-=amount;

        UserPaymentArray[msg.sender].push(Payment({transferAmount:amount,recipientAddress:ReceiverAddress}));

        emit TransferSucess(amount,ReceiverAddress);
    }      

}  