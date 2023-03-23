#!/bin/bash
#
# This is a shell script for Problem 3 of Homework 3
#
base_name=$1
#
base_file=$2
#
num=1;
#
for i in *.$base_file
do
	mv "$i" "$(printf $base_name'%02d'$num).${i#*.}";
	((num++))
done	
