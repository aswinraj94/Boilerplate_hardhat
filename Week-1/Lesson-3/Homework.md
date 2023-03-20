how the abi relates to your contract's code?

We have two elements in the ABI (JSON file)

1. The first element name is "retrieve" which corresponds to the function of the same name in the solidity file.

    The input array is empty since the function doesn't have any input arguments.

    We have one element in the output array of the type "uint256".So the function returns one variable.

    The stateMutability of the function is set to "view". So this function does not write anything to the blockchain.

2. The first element name is "store" which corresponds to the function of the same name in the solidity file.

    We have one element in the input array of the type "uint256" with the name "num".So the function has one input parameter.
    
    The output array is empty since the function does not return any value.

    The stateMutability of the function is set to "nonpayable". So this function writes to the blockchain. This function cannot receive any BNB.

    