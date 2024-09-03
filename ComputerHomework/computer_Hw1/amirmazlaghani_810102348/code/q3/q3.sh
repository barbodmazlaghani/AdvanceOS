#!/bin/bash

echo "FILE_ADDRESS, WORDCOUNT"

for file in $(./ls); do
    echo -n "$file, "
    ./cat $file | ./wc
done
