#!/bin/bash

wget -O http://mirror.bit.edu.cn/apache/kafka/1.0.0/kafka_2.12-1.0.0.tgz 
tar xzf kafka_2.12-1.0.0.tgz 
# modify kafka log dir in /opt/kafka/config/server.properties
sed -i "s/tmp/data/g"  kafka_2.12-1.0.0/config/server.properties
mv kafka_2.12-1.0.0  /opt/kafka

 

