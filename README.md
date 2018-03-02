# kafka-standalone-docker

Single-node Apache Kafka with local Zookeeper.

Powered by Apache kafka-2.12-1.0.0

Run with:
```bash
docker run -d  --restart=always   -v/home/cxu/db_data/kafka/:/data/kafka/ --name=kafka \
           --net=host -e HOSTNAME=localhost  xuchaoo/kafka-standalone-docker
```


## 附录


sudo docker run -d --restart=always  -p5432:5432 -v/home/cxu/_data/pg/data/:/var/lib/postgresql/data/  hub.c.163.com/library/postgres

启动postgresql镜像，并且每次机器重启都会自动重启


docker run -d --restart=always -p27017:27017 -v/home/cxu/_data/_mongo_qikan/:/data/db mongo:3.5


安装docker : https://wiki.deepin.org/index.php?title=Docker

+root 用户组避免每次都输入sudo:  http://www.cnblogs.com/franson-2016/p/6412971.html
