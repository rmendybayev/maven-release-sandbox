#!/bin/bash

input=$1
while IFS= read -r line
do
  echo "chop $line" | sed -n 's/\(.*\)2017-05-26.*/\1/p'
done < "$input"
