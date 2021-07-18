#!/bin/bash
#add fix to exercise6-fix here

if [ -z "$2" ]; then
    echo "Please enter minimum 2 arguments"
    exit 1
fi

hostname=$(echo $HOSTNAME)
dest_user='vagrant'
totalsize=0
# copy to server2
dest_server='192.168.100.11'
server='server2'
# copy to server1
if [ $hostname == 'server2' ]; then
  dest_server='192.168.100.10'
  server='server1'
fi

dest_path="${@: -1}"

args_pass=${@:1:$#-1}

for i in ${args_pass[@]}
do
  totalsize=$((totalsize + $(stat -c "%s" "$i")))
  scp -i /vagrant/.vagrant/machines/$server/virtualbox/private_key $i $dest_user@$dest_server:$dest_path
done

echo "$totalsize"

