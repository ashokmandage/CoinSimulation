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

wonLimit=21;
while [ $headCount -eq $wonLimit ] || [ $tailCount -eq $wonLimit ]
do
echo $flipCoin
if [ $flipCoin -eq $isHead ]
then
headCount=$(($headCount + 1));
else
tailCount=$(($tailCount + 1));
fi
done


if [ $headCount -gt $tailCount ]
then
difference=$(($headCount - $tailCount))
echo 'head wones by' $difference

elif [  $headCount -lt $tailCount ]
then
difference=$(($tailCount - $headCount))
echo 'tail wones by' $difference

else
echo 'ITs Tieeee!!!!'
fi
difference=0;
if [ $headCount -eq $tailCount ]
then
while [ $difference -gt 2 ]
do
echo $flipCoin
if [ $flipCoin -eq $isHead ]
then
headCount=$(($headCount + 1));
else
tailCount=$(($tailCount + 1));
fi
done


