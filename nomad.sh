#!/bin/bash
sudo apt-get update;
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -;
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main";
sudo apt-get update && sudo apt-get install nomad -y;
sudo nomad agent -dev -bind 0.0.0.0 -log-level INFO;