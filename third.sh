#!/bin/bash

./second.sh
ls -l

cat cars.csv  | while read row
do
        len=`echo $row | cut -d"," -f2 | tr -d '"'`
        if [[ $len -gt 200 ]]
        then
                echo $row
        fi
done

read a
read b
echo $((a+b))
