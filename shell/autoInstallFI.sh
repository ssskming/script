#!/usr/bin/expect

# 自动化安装 FI 客户端

set ip [lindex $argv 0]

spawn ssh $ip

expect {
	"yes/no" {send "yes\r"}
	} 

expect "]$"
send "cd /tmp/fi_clinet\r"

expect "]$"
send "./install.sh /opt/fi | tee -a ./install.log\r"

expect "]$"
send "scp ..."

expect {
	"yes/no" {send "yes\r";exp_continue}
	"]$" {send "source ... && sh .... | tee -a ./install.log\r"}
	}

expect "]$"
send "exit\r"
expect eof
