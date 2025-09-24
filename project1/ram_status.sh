#!/bin/bash


<<comment 
ram monitoring status project
comment

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=7000

if [[ $FREE_SPACE -lt $TH  ]]
then
	echo "Warning, Ram is running slow"
else
	echo "Ram is sufficient - $FREE_SPACE M"
fi
