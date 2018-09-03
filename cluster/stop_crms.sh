#! /bin/bash
process=$1
pid=$(ps -ef | grep $process | grep '/build/bin' | grep -v grep | awk '{print $2}')

if [ $? -eq 0 ]; then
	    echo "process id:$pid"
    else
	        echo "process $1 not exit"
		    exit
	    fi


	    kill -9 ${pid}

	    if [ $? -eq 0 ];then
		        echo "kill $1 success"
		else
			    echo "kill $1 fail"
		    fi
