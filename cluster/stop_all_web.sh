#!/bin/bash

ips=(192.168.10.183 192.168.10.184 192.168.10.186 192.168.10.187 192.168.10.188)
loc='~/CRMS/'
echo $loc
for ip in ${ips[@]}
do
    echo "mars : ${ip}"
    ssh mars@${ip} "bash ${loc}stop_web.sh crms-web-view-1.0-jar-with-dependencies.jar" 
done

declare -A users
users=([rbcheng]="192.168.10.103" [xl]="192.168.10.119" [swchen]="192.168.10.191" [rain]="192.168.10.154")

for name in $(echo ${!users[*]})
do
    echo "$name : ${users[$name]}"
    ssh $name@${users[$name]} "bash ${loc}stop_web.sh crms-web-view-1.0-jar-with-dependencies.jar" 
done
