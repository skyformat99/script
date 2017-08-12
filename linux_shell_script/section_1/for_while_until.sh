#!/bin/bash

#for循环
# 从1到50
for i in {1..50};
do
    echo $i
done

# 
for((i=0;i<10;i++)){
    echo $i
}

#while循环
i=0
while [ $i -lt 50 ]
do
    echo $i
    let i++
done

#until
x=0
until [ $x -eq 9 ];
do
    let x++
    echo $x
done


