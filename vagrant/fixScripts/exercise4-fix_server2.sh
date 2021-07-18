#!/bin/bash
#add fix to exercise4-server2 here
cat <<EOT >> .ssh/config
Host server1
  HostName 192.168.100.10
  User vagrant
  StrictHostKeyChecking no
  IdentityFile /vagrant/.vagrant/machines/server1/virtualbox/private_key
EOT

cp /vagrant/fixScripts/exercise6-fix.sh .
chmod +x exercise6-fix.sh

