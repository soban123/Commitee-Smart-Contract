// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;

contract Commitee {
    address owner = msg.sender;
    address[] participants;
    uint256 participantNumber = 0;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function participate() public payable {
        if (msg.value != 2) {
            return;
        } else {
            participants.push(msg.sender);
        }
    }

    function getParticipants() public view returns (address[] memory) {
        return participants;
    }

    function getParticipantNumber() public view returns (uint256) {
        return participantNumber;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendCommitte() external onlyOwner {
        // address payable tempAddress = payable(participants[participantNumber]); // Run alright at remix but truffle shows problem
        // tempAddress.transfer(address(this).balance);
        participantNumber++;
    }
}
