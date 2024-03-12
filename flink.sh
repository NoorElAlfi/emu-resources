#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-8-jdk
wget 'https://archive.apache.org/dist/flink/flink-1.11.2/flink-1.11.2-bin-scala_2.11.tgz'
tar zxvf flink-1.11.2-bin-scala_2.11.tgz
cd flink-1.11.2/ || exit
./bin/start-cluster.sh