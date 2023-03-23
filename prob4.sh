#!/bin/bash
#
file_name=$1
#
# Find the grades and number of Assignments
grades=$( grep -o '[0-9][0-9]' $file_name )
num_assign=$( grep -c "Assignment" $file_name )
#
# Add total of grades together
tot=0;
for i in ${grades[@]};
do
	let tot+=$i
done
#
# Create calc function that prints out the average score w/ one decimal
# point
calc(){ awk "BEGIN{ printf \"The average score is: %.1f\n\", $*}"; }
#
calc $tot/$num_assign
#
#
