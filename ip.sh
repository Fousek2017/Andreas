#!/bin/bash
ip=`ifconfig | grep "inet adr" | awk -F ":" '{print $2}'`
ip=`echo $ip | awk -F " " '{print$ 1}'`
echo "Moje ip: " $ip

rx=`ifconfig | grep Přijato | awk -F "(" '{print $2}'`
rx=`echo $rx | awk -F ")" '{print $1}'`
echo "Přijato :"$rx
