#!/bin/sh

crit=70

read -r temp </sys/class/thermal/thermal_zone0/temp
temp=${temp%???}

if [ "$temp" -ge "$crit" ] ; then
    echo -e "\03 \03  ${temp}°C"
else
    echo -e "\03  ${temp}°C"
fi
