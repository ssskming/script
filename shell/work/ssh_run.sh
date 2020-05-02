#!/bin/bash

# romote execute cmd

# parameter:
#	   1.execute cmd
# return:
#	   0:successful
#	   other is fail
###########################################

# check whether the input parameter are valid

if [ $# -ne 1 ]
then
	echo "Error:input parameter is wrong!"
	echo "example folllow:"
	echo "sh ./ssh_execute.sh <cmd>"
	exit 1
fi

# remote execution

cat ./hosts.txt | while read line
do
    /usr/bin/expect <<EOF
spawn ssh user@$line $cmd
	expect {
	  "yes/no" {send "yes/r";exp_continue}
	  "*password" {send "********\r"}
}
    	expect eof
EOF

if [ $? == 0 ];then
	echo "${line} execute success"
else
	echo "ERROR:${line} execute failed,Please Check!!"
fi

done


