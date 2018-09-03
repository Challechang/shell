#!/bin/bash

ips=(192.168.10.160 192.168.10.161 192.168.10.163 192.168.10.165 192.168.10.166)

for ip in ${ips[@]}
do
    echo ${ip}
    ssh pi@${ip} "(bash /home/pi/build_crms.sh)" &
done
