#!/bin/bash

#获取终端的行数和列数
tput cols
tput lines

#打印出当前终端名
tput longname

#将光标移动到坐标(100,100)处
tput cup 100 100

#设置终端背景色
tputsetb n

#设置文本前景色
tputsetf n


#设置文本样式为粗体
tput bold

#删除从当前光标位置到行尾的所有内容
tputed


#在输入密码时，不应该显示输入内容
echo -e "Enter password: "

stty -echo

read password

stty echo

echo

echo Password read.
