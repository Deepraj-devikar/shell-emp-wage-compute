#!/bin/bash

echo "Welcome to employee wage computation"

function attendance () {
	echo $((RANDOM%3))
}

IS_PRESENT=1
IS_PART_TIME=2
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_TIME_HOUR=4

crrAttendance=$(attendance)
if [ $crrAttendance -eq $IS_PRESENT ]
then
	echo "Employee is present"
	empWage=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
elif [ $crrAttendance -eq $IS_PART_TIME ]
then
	echo "Employee is part time"
	empWage=$(($WAGE_PER_HOUR*$PART_TIME_HOUR))
else
	echo "Employee is absent"
	empWage=0
fi

echo "Employee wage is $empWage"
