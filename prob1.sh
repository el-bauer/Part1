#!/bin/bash
#
# This is a script that sorts n, number, integers
#
input_num=("${@}")
#
input_length=${#input_num[@]}
#
# Check if array is empty
if [[ -z "${input_num}" ]]
then
	echo Not enough arguments passed to $0
fi
#
# Loop through every value and check if it is a letter
# if it is a letter, it will delete it from the array
# and tell the user it is not an integer
#
for (( i=0; i<input_length; i++ ));
do if ! [[ "${input_num[$i]}" =~ ^[0-9]+$ ]];
then
	echo " ${input_num[$i]}" is not a valid integer!
	input_delete=("${input_num[$i]}")
	input_num=( "${input_num[@]/$input_delete}" )
fi
done
#
# Prints the numbers and sorts them
printf '%s\n' "${input_num[@]}" | sort -n
