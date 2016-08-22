#!/usr/bin/env bash
# fix hosts ubuntu/xenial
echo 127.0.0.1 `hostname` |sudo tee -a /etc/hosts
sudo apt-get -y install python-setuptools aptitude git python-dev libxml2-dev libxslt-dev gcc make build-essential libssl-dev libffi-dev
sudo easy_install pip

