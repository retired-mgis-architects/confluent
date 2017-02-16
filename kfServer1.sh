#!/bin/bash
#
docker run -d \
   --net=host \
   --name=kafka-1 \
   -e KAFKA_ZOOKEEPER_CONNECT=10.9.3.4:22181,10.9.3.5:32181,10.9.3.6:42181 \
   -e KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:29092 \
   confluentinc/cp-kafka:3.1.2
