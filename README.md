# shit-code-cloud-docker

## 搭建环境

安装docker： [官方教程](https://docs.docker.com/engine/install/)

安装docker-compose： 

```shell script
$ pip3 install docker-compose
```

docker compose file [官方文档](https://docs.docker.com/compose/compose-file/)

版本：
```shell script
$ docker -v
Docker version 19.03.12, build 48a66213fe
$ docker-compose -v
docker-compose version 1.26.0, build unknown
```

## 单机使用

```shell script
$ docker-compose up
```

## 搭建集群

docker rmi `docker images | grep xxxxx | awk '{print $3}'`

# 集群环境
## env文件

## consul

## mysql

## redis

## rabbitmq

## zipkin

## git2consul

## Prometheus

# 开发环境


docker run -dit centos /bin/bash
容器启动
https://www.cnblogs.com/sunsky303/p/11046681.html

容器不退出
https://wenjudagege.com/posts/dumb-init%E5%BA%94%E7%94%A8%E4%B8%8E%E8%B8%A9%E5%9D%91%E6%89%8B%E5%86%8C/

