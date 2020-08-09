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
headCount=0;
tailCount=0;
for ((i=0;i<5;i++))
do
echo $flipCoin
if [ $flipCoin -eq $isHead ]
then
headCount=$(($headCount + 1));
else
tailCount=$(($tailCount + 1));
fi
done

echo 'Head wons= ' $headCount
echo 'Tail wons= ' $tailCount
