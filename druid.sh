#!/bin/bash
sudo apt-get update;
sudo apt-get install -y openjdk-8-jdk;
wget https://archive.apache.org/dist/druid/0.20.0/apache-druid-0.20.0-bin.tar.gz;
sudo tar -xvzf apache-druid-0.20.0-bin.tar.gz;
cd apache-druid-0.20.0/bin;
sudo ./start-nano-quickstart;

