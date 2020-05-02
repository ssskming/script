#!/bin/awk
# 求时薪最高的员工及时薪
# maxrate 当前最高时薪，当使用一个变量且初始默认为0不用在BEGIN中定义,当 $2 大小maxrate时，把最新的最大值赋给maxrate,并把当前最高时薪的员工再给 maxemp,

$2 > maxrate {maxrate = $2;maxemp = $1}
END {printf "highest hourly rate %.2f for %s \n",maxrate,maxemp}
