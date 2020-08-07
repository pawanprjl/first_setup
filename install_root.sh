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
apt install -y wget

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
mv ~/go /opt/
ln -s /opt/go/bin/ffuf /usr/local/sbin/ffuf
echo "done installing ffuf"

echo "installing subfinder"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
cp -r ~/go /opt/
rm -rf ~/go 
ln -s /opt/go/bin/subfinder /usr/local/sbin/subfinder
echo "done installing subfinder"


echo "installing httpx"
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
cp -r ~/go /opt/
rm -rf ~/go
ln -s /opt/go/bin/httpx /usr/local/sbin/httpx
echo "done installing httpx"

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

echo "installing gobuster"
apt install -y gobuster
echo "done"


echo "installing dnsutils"
apt install -y dnsutils
echo "done"


echo "setting up wordlists"
mkdir ~/wordlist
cd ~/wordlist/
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-100.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-10000.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/namelist.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/burp-parameter-names.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common.txt
wget https://www.scrapmaker.com/data/wordlists/dictionaries/rockyou.txt
git clone https://github.com/danielmiessler/SecLists.git
cd ~/


echo "\n\n\n\n\n\n\n\n\ncleaning up now...\n\n\n\n\n\n\n\n\n"
cd ~
rm -rf ~/first_setup
echo "done cleaning ... exiting ..."
exit

