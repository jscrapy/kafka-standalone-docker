#!/bin/bash

wget http://mirror.bit.edu.cn/apache/kafka/1.0.0/kafka_2.12-1.0.0.tgz -O kafka_2.12-1.0.0.tgz 
tar xzf kafka_2.12-1.0.0.tgz 
# modify kafka log dir in /opt/kafka/config/server.properties
sed -i "s/tmp/data\/kafka/g"  kafka_2.12-1.0.0/config/server.properties

# modify kafka log4j dir
sed -i "s/LOG_DIR=\"$base_dir\/logs\"/LOG_DIR=\"\/data\/kafka\/logs\"/g"   kafka_2.12-1.0.0/bin/kafka-run-class.sh
# modify zookeeper data dir
sed -i "s/tmp/data\/kafka\/log4j-logs/g"  kafka_2.12-1.0.0/config/zookeeper.properties

mv kafka_2.12-1.0.0  /opt/kafka

 

