#!/bin/bash

filename= "salted-data.csv"

while read -r line; do
	echo $line | awk '{print substr($1, 1, length($1)-1)}'

done < "salted-data.csv"
