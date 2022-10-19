#!/bin/bash

dir=$1
file_size=$2
if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi
function rm_n {

    echo $(find ./$dir -type 'f' -size -${file_size}c -delete)
    
}
rm_n $dir $file_size

