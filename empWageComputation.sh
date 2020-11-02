#!/bin/bash

DayWage=160
NoWage=0

attendance=$((RANDOM%2))

if (( $attendance == 1 ))
then
	echo "Daily Wage= $DayWage"
else
        echo "Daily Wage= $NoWage "
fi
