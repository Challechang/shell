#! /bin/bash
num=1
while(($num<=5))
do
    echo $num
    let num++
done

echo 'press <CTRL-D> exit'
echo -n 'Who do you think is the most handsome: '
while read MAN
do
    echo "Yes！$MAN is really handsome"
done
