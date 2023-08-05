#!/bin/bash
disk_threshold=10
email_address=aminfobella3@gmail.com
disk_usage_percent=$(df --total | awk '/sda/ {print $5}'| sed 's/%//g')
echo "$disk_usage_percent"
if [[ $disk_usage_percent -gt $disk_threshold ]]
then
echo "disk usage percent has exceeded disk_threshold"
else
echo "disk_threshold not exceeded"
fi

