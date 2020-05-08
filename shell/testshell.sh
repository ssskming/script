#!/bin/bash
#Date:2017-11-15
#Author:lh
#Email:1087@qq.com
#Description:test
#version:1.0
a="hello lemon"
echo ${a}
echo ${0}
echo ${1}
echo ${2}
. ./myFunc.sh
logErr ${a}
logInfo ${a}

dir=$(cd $(dirname $0);pwd)

logInfo "************当前目录 ${dir} **********************"


current_dir=$(current_dir)
logInfo "************ $current_dir **************************************"
