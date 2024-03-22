#!/bin/bash
sudo apt-get update;
sudo apt-get install -y tomcat8 tomcat8-admin;
sudo head -n -1 /etc/tomcat8/tomcat-users.xml > /etc/tomcat8/temp.xml;
printf '<role rolename="manager-gui"/>\n' >> /etc/tomcat8/temp.xml;
printf '<user username="tomcat" password="tomcat" roles="manager-gui"/>\n' >> /etc/tomcat8/temp.xml;
printf '</tomcat-users>\n' >> /etc/tomcat8/temp.xml;
sudo rm -f /etc/tomcat8/tomcat-users.xml;
sudo mv /etc/tomcat8/temp.xml /etc/tomcat8/tomcat-users.xml;
sudo service tomcat8 restart;
exit;