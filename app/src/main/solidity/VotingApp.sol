// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


contract VotingApp {
    struct Candidate {
        string name;
        uint256 votes;
    }

    Candidate[] public candidates;
    mapping(address => bool) public hasVoted;

    constructor() {
        // Initializing with a list of unique candidates
        candidates.push(Candidate("Anuj", 0));
        candidates.push(Candidate("Rahul", 0));
        candidates.push(Candidate("Rohit", 0));
        candidates.push(Candidate("Karan", 0));
        candidates.push(Candidate("Priya", 0));
        candidates.push(Candidate("Sneha", 0));
        candidates.push(Candidate("Amit", 0));
        candidates.push(Candidate("Neha", 0));
        candidates.push(Candidate("Aman", 0));
        candidates.push(Candidate("Kiran", 0));
        candidates.push(Candidate("Vikas", 0));
        candidates.push(Candidate("Sonia", 0));
    }

    function getCandidatesCount() public view returns (uint256) {
        return candidates.length;
    }

    // It's better to fetch candidates one by one from mobile to avoid high gas costs
    // for returning large dynamic arrays. However, for simplicity, we'll keep getCandidates.
    function getCandidates() public view returns (Candidate[] memory) {
        return candidates;
    }

    function vote(uint256 candidateIndex) public {
        // require that the voter has not voted before
        require(!hasVoted[msg.sender], "You have already voted.");
        // require that the candidate index is valid
        require(candidateIndex < candidates.length, "Invalid candidate index.");

        // record that the voter has voted
        hasVoted[msg.sender] = true;
        // increment the candidate's vote count
        candidates[candidateIndex].votes++;
    }
}
