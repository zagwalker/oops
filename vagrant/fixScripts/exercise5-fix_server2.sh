#!/bin/bash
echo "Host server?" >> /etc/ssh/ssh_config
echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config

su - vagrant -c 'ssh-keygen -f ~/.ssh/id_rsa -P ""'

cat /vagrant/server1Key >> /home/vagrant/.ssh/authorized_keys
rm -rf /vagrant/server1Key
