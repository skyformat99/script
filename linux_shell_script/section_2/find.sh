#!/bin/bash


#列出当前目录及子目录下所有的文件和文件夹
find  base_path

#根据文件名或正则表达式进行搜索
find ~ -name "*.txt" -print

#选项 -iname（忽略字母大小写）

#如果想匹配多个条件中的一个，可以采用OR条件操作
find . \( -name "*.txt" -o -name "*.pdf" \) -print

#-path则将文件路径作为一个整体进行匹配
find /home/users -path "*/slynux/*" -print

#选项-regex的参数和-path的类似，只不过-regex是基于正则表达式来匹配文件路径的
find . -regex ".*\(\.py\|\.sh\)$"

#类似地， -iregex可以让正则表达式忽略大小写
find . -iregex ".*\(\.py\|\.sh\)$"

#用“ !”否定参数的含义
find . ! -name "*.txt" -print

#将find命令向下的最大深度限制为1
find . -maxdepth 1 -name "f*" -print

#打印出深度距离当前目录至少两个子目录的所有文件
find . -mindepth 2 -name "f*" -print

# -type可以对文件搜索进行过滤
#只列出所有的目录
find . -type d -print
#只列出普通文件
find . -type f -print
#只列出符号链接
find . -type l -print

#打印出在最近7天内被访问过的所有文件
find . -type f -atime -7 -print
#打印出恰好在7天前被访问过的所有文件
find . -type f -atime 7 -print
#打印出访问时间超过7天的所有文件
find . -type f -atime +7 -print

#找出比file.txt修改时间更近的所有文件
find . -type f -newer file.txt -print


#基于文件大小的搜索
#大于2KB的文件
find . -type f -size +2k
#小于2KB的文件
find . -type f -size -2k
#大小等于2KB的文件
find . -type f -size 2k

#-delete可以用来删除find查找到的匹配文件
#删除当前目录下所有的 .swp文件
find . -type f -name "*.swp" -delete

#列出具有特定权限的所有文件
#打印出权限为644的文件
find . -type f -perm 644 -print

#打印出用户slynux拥有的所有文件
find . -type f -user slynux -print

#find命令找到两个文件test1.txt和test2.txt，其所有者均为slynux
find . -type f -user root -exec chown slynux {} \;

#将给定目录中的所有C程序文件拼接起来写入单个文件all_c_files.txt
find . -type f -name "*.c" -exec cat {} \;>all_c_files.txt












