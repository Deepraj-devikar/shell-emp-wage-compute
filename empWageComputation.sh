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

function workHour () {
	case $(attendance) in
		$IS_PRESENT)
			echo $FULL_DAY_HOUR
		;;
		$IS_PART_TIME)
			echo $PART_TIME_HOUR
		;;
		*)
			echo 0
		;;
	esac
}

day=1
while [ $day -le 20 -a $totalHour -le $MONTHLY_HOUR_LIMIT ]
do
	tempWorkHour=$(workHour)
	totalHour=$(($totalHour+$tempWorkHour))
	empWage=$(($WAGE_PER_HOUR*$tempWorkHour))
	totalEmpWage=$(($totalEmpWage+$empWage))
	day=$(($day+1))
done

echo "Employee wage for month is $totalEmpWage"
