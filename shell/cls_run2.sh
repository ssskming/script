#!/bin/bash

#######################################################
# 检查特定文件中的特定内容
# parameter 
#	1. FilePath
#	2. FileName
#######################################################

if [ $# -ne 2 ]
then
	echo "Error:input parameter is wrong!"
	echo "example follow:"
	echo "sh ./check.sh <FilePath> <FileName>"
	exit 1
fi

content1='192.168.1.1\[7-9\]'
content2='aaabbb'

chenk="grep -E '${content1}|${content2}' -c ${FilePath}/${FileName}"

# romote execution

cat ./hosts.txt | while read line
do
	/usr/bin/expect <<EOF
	spawn ssh username@${line} ${check}
		expect {
		"yes/no\r" {send "yes\r;exp_continue"}
		"*password:" {send "passwd"}
	}
	expect eof
EOF
done

