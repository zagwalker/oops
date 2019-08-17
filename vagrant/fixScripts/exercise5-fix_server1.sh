#!/bin/bash
echo "Host server?" >> /etc/ssh/ssh_config
echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config
echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config

su - vagrant -c 'ssh-keygen -f ~/.ssh/id_rsa -P ""'

grep "vagrant@server1" /home/vagrant/.ssh/id_rsa.pub  > /vagrant/server1Key
