#!/bin/bash

# 使用一列值来定义一个数组
array_var1={1 2 3 4 5 6 7}

# 将数组定义成一组“索引-值”
array_var[0]="test1"
array_var[1]="test2"
array_var[2]="test3"
array_var[3]="test4"
array_var[4]="test5"
array_var[5]="test6"

#打印出特定索引的数组元素内容
echo ${array_var[0]}
index=5
echo ${array_var[$index]}

#以清单形式打印出数组中的所有值：
echo ${array_var[*]}
# 还可以这样使用
echo ${array_var[@]}

# 打印数组长度（即数组中元素的个数
echo ${#array_var[*]}


# 定义关联数组
# 在关联数组中，我们可以用任意的文本作为数组索引
declare -A ass_array
# 声明之后，可以用两种方法将元素添加到关联数组中
# 利用内嵌“索引-值”列表的方法，提供一个“索引-值”列表
ass_array=([index1]=val1 [index2]=val2)
echo ${ass_array[*]}
# 使用独立的“索引-值”进行赋值
ass_array[index3]=val1
ass_array[index4]=val2
echo ${ass_array[*]}

# 列出数组索引
echo ${!array_var[*]}
# 也可以使用：
echo ${!array_var[@]}


