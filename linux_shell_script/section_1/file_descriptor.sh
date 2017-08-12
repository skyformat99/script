#!/bin/bash

# 只读模式。       
# 截断写入模式     
# 追加写入模式     

echo this is a test line > input.txt
exec 3<input.txt #使用文件描述符3打开并读取文件

cat<&3

#创建一个文件描述符用于写入（截断模式）：
#打开文件进行写入
exec 4>output.txt
echo newline >&4

cat output.txt

#创建一个文件描述符用于写入（追加模式）：
exec 5>>input.txt
echo appended line >&5

cat input.txt


