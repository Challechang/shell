#!/bin/bash

ips=(192.168.10.159 192.168.10.160 192.168.10.163 192.168.10.165 192.168.10.166)

for ip in ${ips[@]}
do
    echo ${ip}
    scp -r $1 pi@${ip}:/home/pi
done
