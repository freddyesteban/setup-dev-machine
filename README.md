# Setup Development Machine For MacOS

This project is automation for installing development tools using Ansible in MacOS.

Feedback is always welcomed!

## Requirements

- MacOS Catalina+
  - Assumes the default shell is ZSH, this is the reason it Catalina+ is required.
- XCode Command-line Tools
  - To install run: `xcode-select --install`
- [Homebrew](https://brew.sh/)
  - The latest versions of Homebrew (3.0.0 and beyond) now natively support Apple Silicon
    architecture. You’ll still need Rosetta 2 to have some packages and formulae to work, but
    many are already native supported by the command line package manager.
- Python 3+
- [Ansible](https://docs.ansible.com/ansible/latest/index.html) - Installed via `Homebrew`
  - Required plugins:
    - `ansible.posix`
    - `community.general`

## Install Ansible & Plugins

```bash
brew install ansible
ansible-galaxy collection install ansible.posix
ansible-galaxy collection install community.general
```

## Configuration

The ansible playbook will use [defaults.py](./defaults.yml) for default versions of what is to be installed.
Update appropriately.

## Run

Run all (dry-run):

```bash
ansible-playbook setup_mac.yml --check
```

Run all:

```bash
ansible-playbook setup_mac.yml
```

Limit to particular roles/tags:

```bash
ansible-playbook setup_mac.yml --tags "golang,git"
```

## Features

- x86_64 and Apple Silicon architectures
- CLI Applications
  - gcloud - Google Cloud CLI
  - git
  - golang
  - cmake
  - httpie
  - jq
  - the_silver_searcher
  - tree
  - gettext
  - watch
  - libpq
  - gnu-tar
  - postgresql
  - kubectl
  - kind
  - helm2
  - helm
  - minikube
  - nodenv - NodeJS version management
  - nodejs
  - pyenv - Python version management
  - pyenv-virtualenv
  - pyenv-update
  - python 2
  - python 3
  - rbenv - Ruby version management
  - oh-my-zsh - ZSH Framework
    - Include a custom version of `juanghurtado` theme with kubernetes information in the shell
  - terraform
  - vim
    - Custom config and plugins
  - krew - Tool to manage `kubectl` plugins
- UI Applications using Homebrew
  - appcleaner
  - caffeine
  - iterm2
  - macvim

## Improvements

- Checksum verfication for binary downloads
- Install default Ruby version using rbenv role
