pragma solidity ^0.4.2;

contract MetaCoin {

    enum CheckoutState
    { accountEmpty, itemInAccount, payForAccount, checkout }
    CheckoutState public currentState;

    bytes32[] card;

    modifier onlyState(CheckoutState expectedState)
        { if (expectedState == currentState)
            {_;} else {revert(); }
        }

    function addToAccount(bytes32 _docID)
        returns (bool) {
            card.push(_docID);
            return true;
        }

    function listIDs(bytes32[] _card)
        returns (bytes32[]) {
            return card;
        }
}
