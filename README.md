# test_devops_zg
Pratical test of infra and DevOps

![alt text](doc/zg_arch.png "Archtecture")


## How to run
Requirements:
python


1 - Install Ansible and boto

```
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
pip install boto
```

2 - Execute Ansible Playbook

```
ansible-playbook task.yml -e @localhost.yml
```