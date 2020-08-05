#!/usr/bin/bash

apt -y update
apt -y upgrade


echo "installing basic required tools"
apt install -y libcurl4-openssl-dev
apt install -y libssl-dev
apt install -y jq
apt install -y ruby-full
apt install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
apt install -y build-essential libssl-dev libffi-dev python-dev
apt install -y python-setuptools
apt install -y libldns-dev
apt install -y python3
apt install -y python3-pip
apt install -y python
apt install -y python-pip
apt install -y python-dnspython
apt install -y git
apt install -y rename
apt install -y xargs


echo "creating a tool folder for all tools to be installed"
mkdir ~/tools
cd ~/tools/

echo "installing my favorite bash_profile aliases"
git clone https://github.com/pawanprjl/bash_profile.git
cd bash_profile
mv bash_profile ~/.bashrc
source ~/.bashrc
cd ~/tools/
echo "done"


#install go
apt install -y golang
