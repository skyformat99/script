#!/bin/bash

#为安装命令apt-get install创建别名
alias install='sudo apt-get install'

#alias命令的作用只是暂时的。一旦关闭当前终端，所有设置过的别名就失效了。
#为了使别名设置一直保持作用，可以将它放入~/.bashrc文件中
 echo 'alias cmd="command seq"' >> ~/.bashrc

