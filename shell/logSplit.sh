#! /bin/bash
# 日志服务
# 定时切割NGINX日志文件

# pid 文件地址
pidFile=/data/docker-weiting/logs/nginx/nginx.pid
# 处理之前的文件地址
logFileBefore=/data/docker-weiting/logs/nginx/server-log.log

# 当前时间
currentTime=$(date "+%Y%m%d%H%M")
# 处理之后的文件地址
logFileAfter=/data/docker-weiting/www/logs/split/$currentTime.log

# 记录处理结果
ret=/data/docker-weiting/shell/logSplit.log

# 开始移动日志
mv $logFileBefore $logFileAfter

# 赋值可写权限
sudo chmod 777 $logFileAfter

# NGINX重新打开日志文件
sudo docker exec -i nginx /bin/bash -c "kill -USR1 $(sudo cat $pidFile)" &>> $ret