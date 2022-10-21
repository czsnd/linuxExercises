#!/bin/bash

# Usage Statement
if [[ $# -eq 0 ]]; then
    echo 'usage: mean.sh <column> [file.csv]' 1>&2
    exit 0
fi

# If using pipeline, read from stdin, otherwise read from $2
if [[ $# -eq 1 ]]; then
    file='/dev/stdin'
else
    file=$2
fi

# Compute mean
cut -d',' -f$1 $file | tail -n +2|
    {
	s=0;i=0;
	while read x;
	do
	    i=$(($i+1))
	    s=$(echo "scale=6;$s+$x" | bc)
	done;
	echo $(echo "scale=6;$s/$i" | bc);
     }

