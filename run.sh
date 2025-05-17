docker stack deploy --compose-file broker-stack.yml  kafka-broker


withing broker container :
kafka-broker-api-versions.sh --bootstrap-server kafka-broker_kafka1:9092

kafka-topics.sh --bootstrap-server kafka-broker_kafka2:9092 --list


check zookeeper node:
echo "dump" | nc zookeeper 2181
