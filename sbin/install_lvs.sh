#!/bin/sh
ansible-playbook -i contrib/ec2.py ansible_app_lvs.yml -e 'tag_name=ansible_app_lvs' -e 'acname=install' --tags install
ansible-playbook -i contrib/ec2.py ansible_app_lvs.yml -e 'tag_name=ansible_app_lvs' -e 'acname=start' --tags start
