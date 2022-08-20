#!/bin/bash

echo "Welcome to employee wage computation"

function attendance () {
	echo $((RANDOM%2))
}

IS_PRESENT=1

if [ $(attendance) -eq $IS_PRESENT ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi


