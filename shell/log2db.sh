#! /bin/bash
# 日志服务
# php脚本分析日志入库

logpath=/data/docker-weiting/shell/log2db.log
sudo docker exec -i php-pro /bin/bash -c "php /var/www/html/production/weiting_account/public/index.php splitlog" &>> $logpath