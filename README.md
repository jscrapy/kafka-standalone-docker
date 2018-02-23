# kafka-standalone-docker

Single-node Apache Kafka with local Zookeeper.

Run with:
```bash
docker run -d -p2181:2181 -p9092:9092 --restart=always -v/home/cxu/db_data/kafka/:/data/kafka-logs --name=kafka  xuchaoo/kafka-standalone-docker
```

