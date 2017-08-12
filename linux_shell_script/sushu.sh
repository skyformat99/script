#!/bin/bash


echo "判断素数"
read -p "请输入需要判断的数" num


i=2
while ((i<=num/2));
do
	if ((num%i==0));then
		break
	fi
	let i++
done
if ((i>num/2));then
	echo "$num是素数"
else
	echo "$num不是素数"
fi


