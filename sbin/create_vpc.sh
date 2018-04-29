#!/bin/sh
ansible-playbook -i contrib/ec2.py ansible_vpc.yml -e 'acname=launch' --tags launch