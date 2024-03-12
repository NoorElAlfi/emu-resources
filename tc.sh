#!/bin/bash
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /usr/local/tomcat tomcat
sudo mkdir /opt/tomcat
sudo tar xzvf /home/noor/apache-tomcat-8.0.1.tar.gz -C /opt/tomcat --strip-components=1
sudo chgrp -R tomcat /opt/tomcat
sudo chmod -R g+r /opt/tomcat/conf
sudo chmod g+x /opt/tomcat/conf
sudo chown -R tomcat /opt/tomcat/work/ /opt/tomcat/logs/ /opt/tomcat/webapps/ /opt/tomcat/temp/
cp /home/noor/tomcat.service /etc/systemd/system/
sudo ufw allow 8080
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl status tomcat
exit
