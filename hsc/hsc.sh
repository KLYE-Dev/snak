#!/bin/bash

echo 'Tryin to run Hive Smart Chain (HSC)....'
function isRunning {
    local epid=1
    while [ ! -z "$epid" ];do
    epid=$(pgrep -o -x $1)
        if [ ! -z "$epid" ];then
            echo  $1 is  already runing [PID : $epid]
            exit
        fi
    done
}

isRunning hsc-cli

cd $HOME/hsc

./monax-keys server &
./hsc-cli start
