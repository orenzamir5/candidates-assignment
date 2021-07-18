#!/bin/bash
#add fix to exercise5-server2 here
sudo sed -i 's/#   PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/ssh_config
sudo sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config
sudo service ssh restart

