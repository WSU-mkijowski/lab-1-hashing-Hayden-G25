#!/bin/bash

filename="salted-data.csv"

val=1
increase=31

for ((val=1; val<=32; val++)); do
	read -r line
	echo $line | awk '{print substr($1, 1, length($1)-1)}'
	

done < "salted-data.csv"
