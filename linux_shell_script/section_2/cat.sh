#/bin/bash

#cat命令是一个平日里经常会使用到的简单命令。它本身表示concatenate（拼接）

#用cat读取文件内容的一般写法是
cat file1 file2 file3

#用cat将来自输入文件的内容与标准输入拼接在一起，将stdin和另一个文件中的数据结合起来
echo  'text through stdin' | cat - file.txt

#删除这些额外的空白行
cat -s file

# 输出的每一行内容之前加上行号
cat -n file

#如果你想跳过空白行，那么可以使用选项-b
cat -b file
