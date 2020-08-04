#******************************************** node相关配置参数 ********************************************
# node镜像版本
NODE_VERSION=registry.cn-beijing.aliyuncs.com/rdisme/node:14.3.2
# 容器名称
CONTAINER_NAME=mynode
# 本地目录
HOST_SRC=${PWD}/apps
# 容器目录
CONTAINER_DEST=/apps
# 注意！！！！
# 下面的命令中 -p参数，是用来指定端口映射关系的
# 比如 npm run dev 此时的端口，需要映射到容器外部才能访问
# ******************************************** node相关配置参数 ********************************************


# 启动node
node:
	@echo "node version is: "${NODE_VERSION}
	@echo "container name is: "${CONTAINER_NAME}
	@echo "host path is: "${HOST_SRC}
	@echo "===============执行命令===================="
	docker run -it -d \
		-v ${HOST_SRC}:${CONTAINER_DEST} \
		-w ${CONTAINER_DEST} \
		-p 8080:8080 \
		-p 8081:8081 \
		--rm \
		--name ${CONTAINER_NAME} ${NODE_VERSION}