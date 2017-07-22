#!/usr/bin/env bash

apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install -y --force-yes ansible
echo "localhost ansible_connection=local" >> /etc/ansible/hosts
#ansible-playbook -s /vagrant/install-dev.yml -i /vagrant/hosts
