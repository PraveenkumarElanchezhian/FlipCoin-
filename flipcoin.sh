#!/bin/bash

headcount=0
tailcount=0

for ((i=1; i<=21; i++))

do

random=$(($RANDOM%2))

if [ $random -eq 1 ]
then
headcount=$(($headcount+1))
else
tailcount=$(($tailcount+1))
fi

diff_one=$(($headcount-$tailcount))
diff_two=$(($tailcount-$headcount))

echo "diff_one : $diff_one"
echo "diff_two : $diff_two"

if [ $diff_one == 2 -o $diff_two == 2 ]
then
echo "Valid"
break
fi

done

echo "Head on : $headcount times"
echo "Tail on : $tailcount times"

