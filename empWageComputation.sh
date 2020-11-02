#!/bin/bash

DailyWage=160
HalfDayWage=80
TotalWage=0
HourlyWage=20
Attendance()
{
        attend=$((RANDOM%7))
}

TotalWages()
{
        TotalWage=$(($Totalwage+$wage))
}

echo "Day No        Wage        Total Wage"
for (( i=1; i<=20; i++ ))
do
         case "$attendance" in
                "1")
                TotalWage $wage
                echo "Day $d         $wage        $TotalWage"  ;;
                "2")
                TotalWage $wage
                echo "Day $d         $wage        $TotalWage"  ;;
                *)
                TotalWage $wage
                echo "Day $d         $wage        $TotalWage" ;;
        esac
done
