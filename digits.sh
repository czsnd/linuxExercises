#!/bin/bash
pattern="[01]{4}"
sum=0
for i in $(seq 1000 2000); do
    if  [[ $i =~ $pattern ]]; then
	sum=$(($sum+$i))
    fi
done
echo $sum
     
