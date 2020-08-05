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


echo "installing ffuf" 
sudo go get github.com/ffuf/ffuf
sudo mv go /opt/
sudo ln -s /opt/go/bin/ffuf /usr/local/sbin/ffuf
echo "done installing ffuf"

echo "installing subfinder"
sudo GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
sudo cp -r go /opt/
sudo rm -rf go 
sudo ln -s /opt/go/bin/subfinder /usr/local/sbin/subfinder
echo "done installing subfinder"

echo "installing dnsrecon"
sudo apt install -y dnsrecon

echo "installing nmap"
sudo apt install -y nmap
echo "done"


echo "installing metasploit framework"
sudo curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  sudo chmod 755 msfinstall && \
  ./msfinstall
  
sudo rm -f msfinstall
echo "done"

echo "installing searchsploit"
sudo apt install -y exploitdb
echo "done"