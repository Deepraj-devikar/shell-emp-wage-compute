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
totalEmpWage=0

for (( day=1; day<=20; day++ ))
do
	case $(attendance) in
		$IS_PRESENT)
			echo "Employee is present"
			empWage=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
		;;
		$IS_PART_TIME)
			echo "Employee is part time"
			empWage=$(($WAGE_PER_HOUR*$PART_TIME_HOUR))
		;;
		*)
			echo "Employee is absent"
			empWage=0
		;;
	esac
	totalEmpWage=$(($totalEmpWage+$empWage))
done

echo "Employee wage for month is $totalEmpWage"
