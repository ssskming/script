#!/bin/bash

# 
fileName=$1
i=1

l=$(wc -l ${fileName} | sed 's/^[ \t]*//g' | cut -d ' ' -f1)


while read line;do
	
	# 其它处理
	
	# 显示百分比
	echo -en "\b\b\b\b"`echo $i*100/$l | bc ` '%'

	((i++))
done < ${fileName}

echo -e '\b\b\b\bOK       '
