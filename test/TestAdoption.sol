// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption{
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    function testUserCanAdoptPet () public {
        uint returnedId = adoption.adopt(8);
        uint expected = 8;
        Assert.equal(returnedId, expected, 'Adoption of pet ID 8 should be recoreded');
    }
}

