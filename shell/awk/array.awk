#!/bin/awk

# 反转 - 按行逆序打印输入
  
   {line[NR] = $0} #记下每一行输入
END {
      i = NR 
      while (i > 0){
      print line[i]
      i = i- 1
      }
    }
