#!/bin/bash

ips=(192.168.10.110 192.168.10.155 192.168.10.158 192.168.10.159 192.168.10.160 192.168.10.157 192.168.10.161 192.168.10.163 192.168.10.165 192.168.10.166)

for ip in ${ips[@]}
do
    echo ${ip}
    ssh pi@${ip} "bash /home/pi/stop_crms.sh launcher_concurrency_tcp"
done
