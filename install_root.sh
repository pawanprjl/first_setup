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
apt install -y nano
apt install -y curl


echo "installing my favorite bash_profile aliases"
git clone https://github.com/pawanprjl/bash_profile.git
cd bash_profile
mv bash_profile ~/.bashrc
source ~/.bashrc
rm -rf bash_profile
echo "done"


echo "install go"
apt install -y golang

echo "installing ffuf" 
go get github.com/ffuf/ffuf
mv go /opt/
ln -s /opt/go/bin/ffuf /usr/local/sbin/ffuf
echo "done installing ffuf"

echo "installing subfinder"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
cp -r go /opt/
rm -rf go 
ln -s /opt/go/bin/subfinder /usr/local/sbin/subfinder
echo "done installing subfinder"

echo "installing dnsrecon"
apt install -y dnsrecon

echo "installing nmap"
apt install -y nmap
echo "done"


echo "installing metasploit framework"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
  
rm -f msfinstall
echo "done"

echo "installing searchsploit"
apt install -y exploitdb
echo "done"
