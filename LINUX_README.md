# Linux

Instructions for setting a dev machince that is debian-based.

## Requirements

Apt:

```bash
sudo apt update
sudo apt upgrade
sudo apt install -y \
    git
    ansible
```

Ansible plugins/extensions

```bash
ansible-galaxy collection install ansible.posix
ansible-galaxy collection install community.general
```
