#!/bin/bash

cas=`date +%T" "%D`
ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}' | awk -F " " '{print $1}'`
rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
users=`who | wc -l`
echo "-----------------------------------------------------------------------"
echo "Aktuální čas: "$cas"<br>" >> /home/student/Plocha/skripty/Andreas/index.html
echo "<hr>" >> /home/student/Plocha/skripty/Andreas/index.html
echo "Moje IP: "$ip "<br>" >> /home/student/Plocha/skripty/Andreas/index.html
echo "<hr>" >> /home/student/Plocha/skripty/Andreas/index.html
echo "Přijatá data: "$rx "br" >>  /home/student/Plocha/skripty/Andreas/index.html
echo "<hr>" >>  /home/student/Plocha/skripty/Andreas/index.html
echo "Odeslaná data: "$tx "br" >> /home/student/Plocha/skripty/Andreas/index.html
echo "<hr>" >> /home/student/Plocha/skripty/Andreas/index.html
echo "Počet přihlášených:"$users "br" >> /home/student/Plocha/Andreas/skripty/index.html

echo "<br><br>" >> /home/student/Plocha/skripty/Andreas/index.html
echo "-----------------------------------------------------------------------" >> /home/student/Plocha/skripty/Andreas/index.html


