#!/bin/bash
#
# This is a shell script for Problem 5 on Homework 3
#
file_z=$1;
#
p_dir=$(pwd)
#
# Make temp directory to unzip files in
mkdir MISC_TEMP
cp $file_z MISC_TEMP
#
cd MISC_TEMP
#
tar xvf $file_z --strip-components 1
#
# Parse through files and create files based off extension
for f in *;
do
	if [[ -f "$f" ]];
	then
		base=${f%.*}
		ext=${f#$base.}
		mkdir -p "${ext}"
		mv "$f" "${ext}"
	fi
done
#
cd $p_dir
#
# Zip files in temp directory
tar -czf ${file_z%%.*}_clean.tar.gz MISC_TEMP
#
# Remove temporary directory
rm -r MISC_TEMP
