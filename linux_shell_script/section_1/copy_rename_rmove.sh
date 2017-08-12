#!/bin/bash

echo "******************************************"
echo "              menu                        "
echo "              1.copy"
echo "              2.rename"
echo "              3.remove"
echo "              4.find"
echo "              5.exit"
echo "******************************************"

read -p "请输入一个选项" choose

if [ ${choose} = 1 ]; then
    read -p "请输入要复制的文件" copy_file
    read -p "请输入要复制到的目录" copy_dir
    cp ${copy_file} ${copy_dir}
elif [ ${choose} = 2 ];then
    read -p "请输入要重命名的文件" rename_file
    read -p "新文件名为" new_filename
    mv ${rename_file} ${new_filename}
elif [ ${choose} = 3 ];then
    read -p "请输入要删除的文件" remove_file
    rm -rf ${remove_file}
elif [ ${choose} = 4 ];then
    read -p "请输入要查找的文件" find_file
    find find_file
else
    exit 0
fi

