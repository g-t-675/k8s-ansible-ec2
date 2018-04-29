# k8s-ansible-ec2
Ansible usage to deploy k8s nodes on AWS EC2
# usage

brew install awscli

brew install ansible

vi ~/.bash_profile
export AWS_ACCESS_KEY_ID=xxxxxxxxxxx
export AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxx
export AWS_REGION=eu-central-1

$ ansible-playbook -i contrib/ec2.py ansible_vpc.yml -e 'acname=launch' --tags launch
$ ansible-playbook -i contrib/ec2.py ansible_vpc.yml -e 'acname=terminate' --tags terminate

$ ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=keypair' --tags keypair
$ ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=launch' --tags launch
$ ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=optimize' --tags optimize
$ ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=terminate' --tags terminate
$ ansible-playbook -i contrib/ec2.py ansible_ec2.yml -e 'acname=ssh' --tags ssh
