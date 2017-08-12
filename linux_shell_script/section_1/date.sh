#!/bin/bash

#读取日期
date

# 打印纪元时
date +%s

#从系统日志中或者其他标准应用程序生成的输出中获取日期 要将日期串转换成纪元
#选项--date用于提供日期串作为输入
date --date "Thu Nov 18 08:07:21 IST 2010" +%s

#将日期串作为输入能够用来获知给定的日期是星期几
date --date "Jan 20 2001" +%A

#用格式串结合 + 作为date命令的参数，可以按照你的选择打印出对应格式的日期
date "+%d %B %Y"

#设置日期和时间
date -s "21 June 2009 11:01:22"


# 检查一组命令所花费的时间
start=$(date +%s)
#commands;
#statements;
end=$(date +%s)
difference=$(( end - start ))
echo Time taken to execute commands is $difference seconds.
