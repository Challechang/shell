#! /bin/bash
process=$1
pid=$(ps -ef | grep $process | grep 'cmake-build-debug/bin/' | grep -v grep | awk '{print $2}')
echo $pid

