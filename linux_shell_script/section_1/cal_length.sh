#!/bin/bash

# 计算变量值的长度

var=123456789123456789
echo ${#var}


# 识别当前所使用的shell

echo $SHELL
# 或者$0

# 检查是否是超级用户

if [ $UID -ne 0 ]; then
    echo "不是超级用户"
else
    echo "超级用户"
fi
