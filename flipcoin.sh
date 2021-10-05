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

done

echo "Head on : $headcount times"
echo "Tail on : $tailcount times"

