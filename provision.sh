#!/usr/bin/env bash
sudo apt-get -qq -y install python-setuptools aptitude git python-dev libxml2-dev libxslt-dev gcc make build-essential libssl-dev libffi-dev

sudo easy_install pip

cd ~
mkdir -p setup
cd setup
git clone https://github.com/miciek/my-machine-provisioning.git
cd my-machine-provisioning

sudo pip install -r requirements.txt

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass
