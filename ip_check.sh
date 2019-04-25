#!/bin/bash

#current_ip=`nmcli device show ens33 | grep IP4.ADDRESS | awk '{print $2}' | cut -d/ -f1`

file="/root/skrypty/IP.txt"
current_external_ip=$(cat "$file")
#echo "CEI $current_external_ip"
external_ip_check=`curl -s ipinfo.io/ip`
#echo "EI $external_ip_check"

if [ "$current_external_ip" != "$external_ip_check" ];
then
mail -v -s "Links with new IP" -b kacper@kostecki.it,przemekgorzynski@gmail.com,administrator@futurelife.com.pl testemailkacu94@gmail.com <<EOF
IP has changed. New links including new IP below

Services:
Jenkins   $external_ip_check:8080

Games:
Minecraft $external_ip_check:25565
Factorio  $external_ip_check:34197

EOF

else
 exit
fi

echo "$external_ip_check" > $file

