#!/bin/bash

DailyWage=160
HalfDayWage=80
TotalWage=0
HourlyWage=20
Attendance=$((RANDOM%7))

	case $Attendance in
	0)      echo "Absente" ;;

	6)	echo "HalfDay" ;;


	5)	echo "Overtime" ;;

	*)      echo "Present" ;;
        esac

