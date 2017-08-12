#!/bin/bash 


num=1
result=0
while((${num}<=100))
do
    result=`expr ${num} + ${result}`
    let num=num+1
done

echo "${result}"
