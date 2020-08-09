#!/bin/bash -x
isHead=1;
isTail=0;
flipCoin=$((RANDOM%2))
if [ $flipCoin -eq $isHead ]
then
echo 'winner is head'
else
echo 'winner is tail'
fi
