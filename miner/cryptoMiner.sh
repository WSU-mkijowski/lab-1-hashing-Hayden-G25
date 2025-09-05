#!/bin/bash

for i in $(seq 100000); do
	saltedword="${i}"battery
	hashval=$( echo -n $saltedword | sha256sum )
	echo "$hashval  $saltedword"

	if [[ $hashval == 0000* ]]; then
		echo "$saltedword" > "coins.txt"
	fi
done | grep ^0000
