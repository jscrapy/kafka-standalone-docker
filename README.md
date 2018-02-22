# kafka-standalone-docker

Single-node Apache Kafka with local Zookeeper.

Run with:
```bash
docker run -d -v/host/path/:/data/kafka-logs --name=kafka --net=host -e HOSTNAME=localhost xuchaoo/kafka-standalone-docker
```

