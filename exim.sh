#!/bin/bash
sudo apt-get update
sudo apt-get install -y xz-utils make gcc libpcre++-dev libdb-dev libxt-dev libxaw7-dev tzdata telnet;
wget https://ftp.exim.org/pub/exim/exim4/old/exim-4.89.tar.xz
tar xf exim-4.89.tar.xz
cd exim-4.89 || exit
cp src/EDITME Local/Makefile
cp exim_monitor/EDITME Local/eximon.conf
sed -i 's/^EXIM_USER=/EXIM_USER=exim/' Local/Makefile
sudo useradd exim
make
sudo make install
exit