pragma solidity ^0.4.17;


contract Adoption {
    address[16] public adopters;

    //Adopting a pet
    function adopt(uint petId) public returns (uint) {
        //ensure that the petID is within range
        require(petId >= 0 && petId <= 15);
        
        //add whatever address that made the call to our adopers array
        adopters[petId] = msg.sender;
        //return the petID provided as a confirmation
        return petId;
    }

    //Retrieing the adopters
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}