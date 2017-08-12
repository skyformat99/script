#!/bin/bash

for i in {1..6};
do
    set -x
    echo $i
    set +x
done
echo "script executed"

function DEBUG(){
    [ "$_DEBUG" == "on" ] && $@ || :
}
for i in {1..10}
do
    DEBUG echo $i
done


#set –x：在执行时显示参数和命令。
#set +x：禁止调试。
#set –v：当命令进行读取时显示输入。
#set +v：禁止打印输入

#!/bin/bash改成 #!/bin/bash -xv
