# docker-local

## 介绍

本地开发环境



### 启动node

```
docker run -it -d -v /c/Users/rdisme/apps/docker-local/www:/apps -p 9527:9527 --rm --name mynode registry.cn-beijing.aliyuncs.com/rdisme/node:14.3.2
```



### supervisor

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