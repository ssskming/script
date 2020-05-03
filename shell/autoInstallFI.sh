#!/usr/bin/expect

# 自动化安装 FI 客户端

set ip [lindex $argv 0]

spawn ssh $ip

expect 
