#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace2021" ]; then
    wget https://github.com/zhuji9999/autoBestTrace/raw/master/besttrace2021
    # unzip besttrace4linux.zip
    chmod +x besttrace2021
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(101.95.120.109 14.215.116.1 219.141.147.210 60.176.0.1 58.42.224.1 58.60.188.222 210.22.97.1 211.95.193.12 202.106.50.1 221.12.1.227 58.16.28.1 210.21.196.6 211.136.112.200 221.183.90.217 221.130.33.1 211.140.13.188 211.139.0.10 120.196.165.24 202.112.14.151)
ip_addr=(上海电信 广州电信 北京电信 杭州电信 贵阳电信 深圳电信 上海联通 广州联通 北京联通 杭州联通 贵阳联通 深圳联通 上海移动 广州移动 北京移动 杭州移动 贵阳移动 深圳移动 成都教育网)
# ip_len=${#ip_list[@]}

for i in {0..18}
do
	echo ${ip_addr[$i]}
	./besttrace2021 -q 1 ${ip_list[$i]}
	next
done
