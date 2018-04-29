#!/bin/sh
ansible-playbook -i contrib/ec2.py ansible_app_collector.yml -e 'tag_name=ansible_app_collector' -e 'acname=install' --tags install
ansible-playbook -i contrib/ec2.py ansible_app_collector.yml -e 'tag_name=ansible_app_collector' -e 'acname=enable' --tags enable
ansible-playbook -i contrib/ec2.py ansible_app_collector.yml -e 'tag_name=ansible_app_collector' -e 'acname=start' --tags start
ansible-playbook -i contrib/ec2.py ansible_app_collector.yml -e 'tag_name=ansible_app_collector' -e 'acname=deploy' --tags deploy