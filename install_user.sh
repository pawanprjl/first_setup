#!/usr/bin/bash

sudo apt -y update
sudo apt -y upgrade


echo "installing basic required tools"
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y libssl-dev
sudo apt install -y jq
sudo apt install -y ruby-full
sudo apt install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt install -y build-essential libssl-dev libffi-dev python-dev
sudo apt install -y python-setuptools
sudo apt install -y libldns-dev
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y python
sudo apt install -y python-pip
sudo apt install -y python-dnspython
sudo apt install -y git
sudo apt install -y rename
sudo apt install -y xargs


echo "creating a tool folder for all tools to be installed"
mkdir ~/tools
cd ~/tools/

echo "installing my favorite bash_profile aliases"
git clone https://github.com/pawanprjl/bash_profile.git
cd bash_profile
sudo mv bash_profile ~/.bashrc
source ~/.bashrc
cd ~/tools/
echo "done"


#install go
sudo apt install -y golang
