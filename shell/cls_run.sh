#!/bin/bash

export NODE_LIST = "HOSTNAME1 HOSTNAME2 192.168.1.2 192.168.1.3"

if [ -z "NODE_LIST" ];then
	echo 
	echo Error:NODE_LIST enviroment variable must be set in .bash_profile
	exit 1
fi


if [[ $1 = '--backgroud' ]];then
	shift
	for i in $NODE_LIST;do
		echo "==================== $i ======================"
		ssh -o StrictHostKeyChecking=no -n $i "$@" &
	done
else
	for i in $NODE_LIST;do
		echo "==================== $i ======================"
		ssh -i "$@"
	done
fi
wait
