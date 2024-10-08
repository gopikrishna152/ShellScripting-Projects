#!/bin/bash
echo "this is the script file for the disk usage in linux System"
disk_size=$(df -h | grep "/dev/root" | awk '{print $5}' |cut -d '%' -f1)
echo "$disk_size% is filled"
if [ $disk_size -gt 80 ]; then
	echo " Danger! No disck space Available"
else
	available_space=$((100-disk_size))
	echo "No Danger! $available_space% is availble"
fi
