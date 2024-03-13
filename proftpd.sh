#!/bin/bash
sudo apt-get update;
sudo apt-get install -y make gcc;
wget ftp://ftp.proftpd.org/distrib/source/proftpd-1.3.5.tar.gz;
tar zxvf proftpd-1.3.5.tar.gz;
cd proftpd-1.3.5;
./configure --with-modules=mod_copy;
make;
sudo make install;
sudo ./proftpd -n -c "/home/noor/proftpd-1.3.5/sample-configurations/basic.conf";
sudo apt install php apache2; 
sudo mkdir /home/var/www/html/test;
sudo chmod 777 /var/www/html/test;
exit;