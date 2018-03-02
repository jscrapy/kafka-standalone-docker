# kafka-standalone-docker

Single-node Apache Kafka with local Zookeeper.

Powered by Apache kafka-2.12-1.0.0

Run with:
```bash
docker run -d  --restart=always   -v/home/cxu/db_data/kafka/:/data/kafka/ --name=kafka \
           --net=host -e HOSTNAME=localhost  xuchaoo/kafka-standalone-docker
```

