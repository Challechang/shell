#! /bin/bash
echo 'The number you entered is:'
read aNum
case $aNum in
    1*)  echo 'You have chosen 1'
    ;;
    2)  echo 'You have chosen 2'
    ;;
    3)  echo 'You have chosen 3'
    ;;
    4)  echo 'You have chosen 4'
    ;;
    *)  echo 'You did not enter a number between 1 and 4'
    ;;
esac
