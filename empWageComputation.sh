#!/bin/bash

echo "Welcome to employee wage computation"

function attendance () {
	echo $((RANDOM%2))
}

IS_PRESENT=1
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8

if [ $(attendance) -eq $IS_PRESENT ]
then
	echo "Employee is present"
	empWage=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
else
	echo "Employee is absent"
	empWage=0
fi

echo "Employee wage is $empWage"
