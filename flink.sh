#!/bin/bash
sudo apt-get update;
sudo apt-get install -y openjdk-8-jdk;
wget https://archive.apache.org/dist/flink/flink-1.11.2/flink-1.11.2-bin-scala_2.11.tgz;
tar zxvf flink-1.11.2-bin-scala_2.11.tgz;
cd flink-1.11.2/;
sudo .cd /bin/start-cluster.sh;
exit;