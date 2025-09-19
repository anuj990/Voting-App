package com.example.votingapp.ui.theme

sealed class VoteUiState {
    data object MetamaskConnect : VoteUiState()
    data class CandidateList(val candidates : List<String>) : VoteUiState()
    data object SuccessScreen : VoteUiState()
    data object Loading : VoteUiState()

}