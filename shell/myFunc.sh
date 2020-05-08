#!/bin/bash

: '
 自定义函数，使用: 1. source ./myFunc.sh  2.  . ./myFunc.sh

 函数 
	1. logErr <argv>   输出错误日志
	2. logInfo <argv>  输出INFO输出
	3. current_dir     输出当前目录
'

# Print error log
function logErr
{
	#echo "[`date "+%Y-%m-%d %H:%M:%S"`][ERROR] $@" | tee -a ${log_out}
	#echo "[`date "+%Y-%m-%d %H:%M:%S"`][ERROR] $@" 
	#echo -e "[`date "+%Y-%m-%d %H:%M:%S"`][\033[31mERROR\033[0m] $@" 
	echo -e "[`date "+%Y-%m-%d %H:%M:%S"`][\033[31mERROR\033[0m] \033[31m$@\033[0m" 
}

# Print info log
function logInfo
{
	#echo "[`date "+%Y-%m-%d %H:%M:%S"`][ERROR] $@" | tee -a ${log_out}
	#echo "[`date "+%Y-%m-%d %H:%M:%S"`][INFO] $@" 
	echo -e "[`date "+%Y-%m-%d %H:%M:%S"`][\033[32mIFNO\033[0m] $@" 
}

# 当前目录
function current_dir
{
	current_dir=$(cd $(dirname $0);pwd)
	echo  ${current_dir}
}
