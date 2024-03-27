#!/bin/bash
sudo apt-get update;
sudo apt-get install -y curl;
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall;
sudo chmod 755 msfinstall;
sudo sh msfinstall;
exit;
#cd /opt/metasploit-framework/bin/;
#msfconsole;
#yes
#exit