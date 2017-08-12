#!/bin/bash

# 数学计算

# 使用let (()) []  expr  bc 进行数学计算

no1=4
no2=5

let result=no1+no2
echo $result

# 自加操作
let no1++
echo $no1

# 自减操作
let no1--
echo $no1

# 简写形式
let no+=6
echo $no
let no-=6
echo $no

# 使用[]
result=$[$no1 + 5 ]
echo $result 

# 使用(())
result=$(( no1 +  50 ))
echo $result 

# 使用expr
result=`expr 3 + 4`
echo $result 
result=$(expr $no1 + 5 )
echo $result 



# 使用bc进行浮点数运算并应用一些高级函数
echo "4 * 0.56" | bc
no=54
result=`echo "$no * 1.5" | bc`
echo $result

# 设定小数的精度
echo "scale=2;3/8" | bc

# 进制转换
# 把十进制转换为二进制
no=100
echo "obase=2;$no" | bc
# 把二进制转换成十进制
no=1100100
echo "obase=10;ibase=2;$no" | bc

# 计算平方以及平方根
echo "sqrt(100)" | bc 
echo "10^10" | bc
