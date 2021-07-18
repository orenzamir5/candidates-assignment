#!/bin/bash
#add fix to exercise3 here
sudo sed -i 's/Require all denied//g' /etc/apache2/sites-enabled/000-default.conf
sudo service apache2 reload
