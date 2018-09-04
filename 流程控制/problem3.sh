#! /bin/bash
num=10
line=1
while [ $line -le $num  ]
do
    i=0
    while [ $i -lt $[`expr $num - $line`] ]
    do
        echo -e " \c"
        let i++
    done
    
    i=0
    while [ $i -lt $[`expr 2 \* $line - 1`] ]
    do
        echo -e "*\c"
        let i++
    done
    echo ""
    
    let line++
done
