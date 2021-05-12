# docker-local
本地开发环境



## 开发须知

1 进入 nginx/conf.d 复制一份nginx配置文件
```
cp default.conf.example default.conf
```

2 查看docker-compose.yml文件，把需要的服务打开（注释解开即可）

3 启动服务
```
docker-compose up -d
```



## 端口介绍

- 80 - 90
> nginx 专用端口

- 8080
> jenkins web端口

- 8081
> mysql admin web端口

- 8082
> phpmyadmin web端口

- 8083
> redis admin web端口

- 8084
> rabbitmq web端口

- 8085
> activemq web端口

- 8086
> supervisor web端口

- 8087
> showdoc web端口


## 服务介绍

### Nginx

配置文件更新之后软重启
```
docker exec -it nginx nginx -s reload
```

### supervisor

> 默认账号：user	123

管理命令

更新新的配置到supervisord
```
supervisorctl update
```

重新启动配置中的所有程序
```
supervisorctl reload
```

启动某个进程(program_name=你配置中写的程序名称)
```
supervisorctl start program_name
```

停止某一进程 (program_name=你配置中写的程序名称)
```
pervisorctl stop program_name
```

重启某一进程 (program_name=你配置中写的程序名称)
```
supervisorctl restart program_name
```

停止全部进程
```
supervisorctl stop all
```

### active mq
示例：https://github.com/dejanb/stomp-php/tree/master/examples
> 默认账号：admin	admin

### rabbit mq
> 默认账号：rabbitmq  rabbitmq


### showdoc
https://www.showdoc.com.cn/help?page_id=65610