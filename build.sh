#!/bin/bash

export KAFKA=kafka_2.12-1.0.0

wget http://mirror.bit.edu.cn/apache/kafka/1.0.0/${KAFKA}.tgz -O ${KAFKA}.tgz 
tar xzf ${KAFKA}.tgz 
# modify kafka log dir in /opt/kafka/config/server.properties
sed -i "s/tmp/data\/kafka/g"  ${KAFKA}/config/server.properties

# keep logs in recent 1 hour
sed -i "s/168/1/g"  ${KAFKA}/config/server.properties

#echo -e  "\ndelete.topic.enable=true" >> ${KAFKA}/config/server.properties
#echo -e  "\nauto.create.topics.enable=false" >> ${KAFKA}/config/server.properties

# modify kafka log4j dir
sed -i "s/\$base_dir\/logs/\/data\/kafka\/logs/g"   ${KAFKA}/bin/kafka-run-class.sh
# modify zookeeper data dir
sed -i "s/tmp/data\/kafka\/log4j-logs/g"  ${KAFKA}/config/zookeeper.properties



mv ${KAFKA}  /opt/kafka

 

