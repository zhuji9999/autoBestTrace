#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
    wget https://github.com/zhuji9999/autoBestTrace/raw/master/besttrace
    # unzip besttrace4linux.zip
    chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(101.95.120.109 211.95.71.10 183.192.160.100 14.215.116.1 211.95.193.12 211.139.145.34 220.181.22.1 202.96.18.1 221.130.33.1 60.176.0.1 221.12.1.227 211.140.0.2 58.42.224.1 58.16.28.1 211.139.0.10 202.112.14.151)
ip_addr=(上海电信 上海联通 上海移动 广州电信 广州联通 广州移动 北京电信 北京联通 北京移动 杭州电信 杭州联通 杭州移动 贵阳电信 贵阳联通 贵阳移动 成都教育网)
# ip_len=${#ip_list[@]}

for i in {0..15}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
