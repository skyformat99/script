#!/bin/bash

#从输入中读取n个字符并存入变量variable_name

read -n 2 var
echo "$var"

#用无回显的方式读取密码：
read -s var


#显示提示信息
read -p "Enter input:" var

#在特定时限内读取输入
#在2秒内将键入的字符串读入变量var
read -t 2 var

#用特定的定界符作为输入行的结束
#hello:#var 被设置为 hello
read -d ":" var
