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
MONTHLY_HOUR_LIMIT=100
totalEmpWage=0
totalHour=0

day=1
while [ $day -le 20 -a $totalHour -le $MONTHLY_HOUR_LIMIT ]
do
	case $(attendance) in
		$IS_PRESENT)
			echo "Employee is present"
			totalHour=$(($totalHour+$FULL_DAY_HOUR))
			empWage=$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
		;;
		$IS_PART_TIME)
			echo "Employee is part time"
			totalHour=$(($totalHour+$PART_TIME_HOUR))
			empWage=$(($WAGE_PER_HOUR*$PART_TIME_HOUR))
		;;
		*)
			echo "Employee is absent"
			empWage=0
		;;
	esac
	totalEmpWage=$(($totalEmpWage+$empWage))
	day=$(($day+1))
done

echo "Employee wage for month is $totalEmpWage"
