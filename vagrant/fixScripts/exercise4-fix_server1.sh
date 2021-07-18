#!/bin/bash
#add fix to exercise4-server1 here
cat <<EOT >> .ssh/config
Host server2
  HostName 192.168.100.11
  User vagrant
  StrictHostKeyChecking no
  IdentityFile /vagrant/.vagrant/machines/server2/virtualbox/private_key
EOT

cp /vagrant/fixScripts/exercise6-fix.sh .
chmod +x exercise6-fix.sh
