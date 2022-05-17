// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ConditionalEscrow.sol";


contract RefundEscrow is ConditionalEscrow {
    using Address for address payable;

    enum State {
        Active,
        Refunding,
        Closed
    }

    event RefundsClosed();
    event RefundsEnabled();

    State private _state;
    address payable private immutable _beneficiary;

    /**
     * @dev Constructor.
     * @param beneficiary_ The beneficiary of the deposits.
     */
    constructor(address payable beneficiary_) {
        require(beneficiary_ != address(0), "RefundEscrow: beneficiary is the zero address");
        _beneficiary = beneficiary_;
        _state = State.Active;
    }
    /**
     * @return The current state of the escrow.
     */
    function state() public view virtual returns (State) {
        return _state;
    }

    /**
     * @return The beneficiary of the escrow.
     */
    function beneficiary() public view virtual returns (address payable) {
        return _beneficiary;
    }
   
}
