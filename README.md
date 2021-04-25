# docker-local

## 介绍

本地开发环境


## Nginx

配置文件更新
```
cp default.conf.example default.conf
```
软重启
```
docker exec -it nginx nginx -s reload
```



## supervisor

> web后台端口：9001
>
> 默认账号：user	123



管理命令

1 . 更新新的配置到supervisord

```
supervisorctl update
```

　　2. 重新启动配置中的所有程序

```
supervisorctl reload
```

　　3. 启动某个进程(program_name=你配置中写的程序名称)

```
supervisorctl start program_name
```

　　4. 停止某一进程 (program_name=你配置中写的程序名称)

```
pervisorctl stop program_name
```

　　5. 重启某一进程 (program_name=你配置中写的程序名称)

```
supervisorctl restart program_name
```

　　6. 停止全部进程

```
supervisorctl stop all
```





## active mq

> 示例：https://github.com/dejanb/stomp-php/tree/master/examples
>
> web管理端口：8161
>
> 默认账号：admin	admin





## rabbit mq

> web管理端口：15672
>
> 默认账号：rabbitmq  rabbitmq

## MySql 管理工具
### phpMyAdmin
> web管理端口：8080

### adminer
> web管理端口：8090

## phpRedisAdmin
> web管理端口：8081