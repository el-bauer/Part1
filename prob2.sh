#!/bin/bash
#
# This is a shell script for Problem 2 of Homework 3
#
if [ -d $1 ]
then
	echo $1 is a directory
	[ -w $1 ] && W="User has READ access to $1" || W="User does not have READ access to $1"
	[ -r $1 ] && R="User has WRITE access to $1" || R="User does not have WRITE access to $1"
	[ -x $1 ] && X="User has EXECUTE access to $1" || X="User does not have EXECUTE access to $1"
	echo $W
	echo $R
	echo $X

elif [ -f $1 ]
then
	echo $1 is a file
		
	[ -w $1 ] && W="User has READ access to $1" || W="User does not have READ access to $1"
	[ -r $1 ] && R="User has WRITE access to $1" || R="User does not have WRITE access to $1"
	[ -x $1 ] && X="User has EXECUTE access to $1" || X="User does not have EXECUTE access to $1"
	echo $W
	echo $R
	echo $X

fi	
