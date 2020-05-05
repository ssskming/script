#!/bin/bash

# 循环执行，连库清表的shell
for trun_user in `ls /tmp/*.sql`
do
nohup sh ${trun_user} &
done

# 检查生成的日志文件标识 

while true
do
if [ `cat trun.log | grep success | wd -l` -eq 43 ];then
	touch ./truncate_successfully.ok
	exit
fi
	sleep 30
done


