#!/bin/bash

today=$(date +%Y%m%d_%H%M%S)
# now=$(date +%R:%S) Not necessary

for j in `seq 1 $1`
do

	echo "Shuf $j; " | tr '\n' ' ' >> Log_numbers_$today.csv
	shuf -i 1-9999 -n 1  >> Log_numbers_$today.csv
	#echo \ >> Log_numbers_$today.csv
	
	echo "Random $j; " | tr '\n' ' ' >> Log_numbers_$today.csv
	rand_how=$[ 1 + $[ RANDOM % 9999 ]] >> Log_numbers_$today.csv
	echo $rand_how >> Log_numbers_$today.csv
	#echo \ >> Log_numbers_$today.csv

done

