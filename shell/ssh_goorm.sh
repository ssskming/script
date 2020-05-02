#!/usr/bin/expect
spawn ssh -p 52599 root@54.187.153.26
	expect {
		"yes/no" {send "yes\r"}
		"password" {send "zmP45qyvw16tARKCNiiXV\r";exp_continue}
		}
	expect "#"
	send "echo `date` >> ~/test.txt\r\r"
	expect "#"
	send "exit\r"
expect eof
