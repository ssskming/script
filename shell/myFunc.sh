#!/bin/bash

# Print error log
function logErr
{
	#echo "[`date "+%Y-%m-%d %H:%M:%S"`][ERROR] $@" | tee -a ${log_out}
	echo "[`date "+%Y-%m-%d %H:%M:%S"`][ERROR] $@" 
}

# Print info log
function logInfo
{
	#echo "[`date "+%Y-%m-%d %H:%M:%S"`][ERROR] $@" | tee -a ${log_out}
	echo "[`date "+%Y-%m-%d %H:%M:%S"`][INFO] $@" 
}

# 当前目录
function current_dir
{
	current_dir=$(cd $(dirname $0);pwd)
	echo  ${current_dir}
}
