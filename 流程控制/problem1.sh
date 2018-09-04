#! /bin/bash
echo "Input a String: "
read cmd
if [ $cmd = "quit" ]
then
    exit 0
else
    echo "Your input: $cmd"
fi
