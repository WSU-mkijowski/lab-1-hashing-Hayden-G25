#!/bin/bash

for i in $(seq 10000); do
	saltedword="${i}"battery
	hashval=$( echo -n $saltedword | sha256sum )
	echo "$hashval  $saltedword"

	if [[ $hashval == 000* ]]; then
		echo "$saltedword" > "coins.txt"
	fi
done | grep ^00 > coins.txt 
