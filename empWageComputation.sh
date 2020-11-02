#!/bin/bash

DailyWage=160
HalfDayWage=80
TotalWage=0
HourlyWage=20

attendance=$((RANDOM%7))

if [[ $attendance -eq 1 ]]
then
	echo "Employee is Present"
elif [[ $attendance -eq 6 ]]
then
	echo "OverTime"
else
        echo "Employee is Absent"
fi
