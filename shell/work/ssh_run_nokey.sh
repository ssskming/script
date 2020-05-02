#!/bin/bash

# romote execute cmd 
# Avoid Secret

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

CMD=$1
REMOTE_IP=`cat ./hosts.txt`

for IP in ${REMOTE_IP}
do
	echo ${IP}
	ssh -oStrictHostKeyChecking=no ${IP} "${CMD}"
	echo "${IP} end"
done



