#!/bin/bash

DailyWage=160
HalfDayWage=80
TotalWage=0
HourlyWage=20

Attendance=$((RANDOM%7))

	case $Attendance in
	0)      Absent=$(($Absent+1))
                echo "Day $i    00      $TotalWage" ;;

    6)      HalfDay=$(($HalfDay+1))
                TotalWage=$(($TotalWage+$HalfDayWage))
                echo "Day $i    $HalfDayWage      $TotalWage" ;;

	5)	OverTimeHours=$((RANDOM%4))
		OverTHrs=$OverTimeHours

		case $OverTimeHours in
		0) OverTimeWage=$((4*20))
		TotalWage=$(($TotalWage+$HalfDayWage))
		echo "Day $i	$OverTime	$TotalWage";;
		1) OverTime=$((3*20))
                TotalWage=$(($TotalWage+$HalfDayWage))
                echo "Day $i    $OverTime       $TotalWage";;
		2) OverTime=$((2*20))
                TotalWage=$(($TotalWage+$HalfDayWage))
                echo "Day $i    $OverTime       $TotalWage";;
		3) OverTime=20
                TotalWage=$(($TotalWage+$HalfDayWage))
                echo "Day $i    $OverTime       $TotalWage";;
		esac	;;

	*)      Present=$(($Present+1))
                TotalWage=$(($TotalWage+$DailyWage))
                echo "Day $i    $DailyWage      $TotalWage" ;;
        esac

echo "Present $Present"
echo "Absent $Absent"
echo "Half Day $HalfDay"
echo "Total Month Wage = $TotalWage"
