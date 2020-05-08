#!/bin/bash

: '
case example
'
echo -e -n "请输入\033[31m数字\033[0m"
read num

case $num in
	100)
	echo "100!!" ;;
	200)
	echo "200!!" ;;
	*)
	echo "既不是100也不是200" ;;
esac
