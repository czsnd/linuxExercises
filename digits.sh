#!/bin/bash
temp="[01]{4}"
sum=0
for i in $(seq 1000 2000); do
    if  [[ $i =~ $temp ]]; then
	sum=$(($sum+$i))
    fi
done
echo $sum
     
