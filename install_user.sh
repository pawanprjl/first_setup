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
sudo apt install -y nano
sudo apt install -y curl
sudo apt install -y wget


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

cd ~/
echo "installing ffuf" 
sudo go get github.com/ffuf/ffuf
sudo mv ~/go /opt/
sudo ln -s /opt/go/bin/ffuf /usr/local/sbin/ffuf
echo "done installing ffuf"

echo "installing subfinder"
sudo GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
sudo cp -r ~/go /opt/
sudo rm -rf ~/go 
sudo ln -s /opt/go/bin/subfinder /usr/local/sbin/subfinder
echo "done installing subfinder"

echo "installing httpx"
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
sudo cp -r ~/go /opt/
sudo rm -rf ~/go
sudo ln -s /opt/go/bin/httpx /usr/local/sbin/httpx
echo "done installing httpx"

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

echo "installing gobuster"
sudo apt install -y gobuster
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
sudo rm -rf ~/first_setup
echo "done cleaning ... exiting ..."
exit
