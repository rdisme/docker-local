#!/bin/bash

# 定时切割nginx日志
# 目前安装每日一次
# 0 0 * * * root sh /data/splitLog.sh
#

curyear=$(date "+%Y")
curmonth=$(date "+%m")
curday=$(date "+%d")

# nginx的日志目录
nginx_log_dir=/data/nginx/log
# 备份地址目录
log_bak_dir=$nginx_log_dir/$curyear/$curmonth

# 判断是否需要创建备份目录
if [ ! -d $log_bak_dir ]; then
    mkdir -p $log_bak_dir
fi

# 移动日志
mv $nginx_log_dir/access.log $log_bak_dir/$curday-access.log
mv $nginx_log_dir/error.log $log_bak_dir/$curday-error.log

# 软重启nginx
docker exec -i nginx nginx -s reload
