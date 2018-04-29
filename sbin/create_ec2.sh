#!/bin/sh
ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=keypair' --tags keypair
ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=launch' --tags launch
ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=ssh' --tags ssh