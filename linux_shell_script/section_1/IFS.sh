#!/bin/bash

#迭代一个字符串或逗号分隔型数值（Comma Separated Value， CSV）中的单词

data="name,sex,rollno,location"
oldIFS=$IFS
IFS=","
for item in $data;
do
    echo Item: $item
done

IPS=$oldIFS

line="root:x:0:0:root:/root:/bin/bash"
oldIFS=$IPS
IPS=":"
count=0
for item in $line;
do
    [ $count -eq 0 ] && user=$item;
    [ $count -eq 6 ] && shell=$item;
    let count++
done
IFS=$oldIFS
echo "$user's shell is $shell"
