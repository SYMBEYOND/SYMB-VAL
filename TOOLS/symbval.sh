#!/bin/zsh

echo ""

printf "claim: "
read claim

printf "belief_basis: "
read belief_basis

printf "failure_condition: "
read failure_condition

printf "requires_external_verification: "
read requires_external_verification

printf "confidence [low/medium/high]: "
read confidence

printf "status [assumed/tested/verified/rejected]: "
read val_status

echo ""
echo "§SYMB-VAL·BEGIN"
echo "claim: $claim"
echo "belief_basis: $belief_basis"
echo "failure_condition: $failure_condition"
echo "requires_external_verification: $requires_external_verification"
echo "confidence: $confidence"
echo "status: $val_status"
echo "§SYMB-VAL·END"
echo ""
