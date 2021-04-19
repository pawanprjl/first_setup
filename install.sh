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

# install hashcat
apt install -y hashcat

#install john
apt install -y john


echo "install go"
apt install -y golang

cd ~/
echo "installing ffuf, subfinder, httpx, waybackurls" 
go get github.com/ffuf/ffuf
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
go get github.com/tomnomnom/waybackurls
echo "installing aquatone"
go get github.com/michenriksen/aquatone
go get -u github.com/tomnomnom/httprobe
GO111MODULE=on go get -u -v github.com/lc/gau
go get -u github.com/tomnomnom/qsreplace
go get -u github.com/tomnomnom/anew
go get -u github.com/tomnomnom/gron
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/tomnomnom/hacks/html-tool
go get -u github.com/tomnomnom/unfurl

#creating symlinks
ln -s ~/go/bin/ffuf /usr/local/sbin/ffuf
ln -s ~/go/bin/subfinder /usr/local/sbin/subfinder
ln -s ~/go/bin/httpx /usr/local/sbin/httpx
ln -s ~/go/bin/waybackurls /usr/local/sbin/waybackurls
ln -s ~/go/bin/aquatone /usr/local/sbin/aquatone
ln -s ~/go/bin/httprobe /usr/local/sbin/httprobe
ln -s ~/go/bin/gau /usr/local/sbin/gau
ln -s ~/go/bin/qsreplace /usr/local/sbin/qsreplace
ln -s ~/go/bin/anew /usr/local/sbin/anew
ln -s ~/go/bin/gron /usr/local/sbin/gron
ln -s ~/go/bin/assetfinder /usr/local/sbin/assetfinder
ln -s ~/go/bin/html-tool /usr/local/sbin/html-tool
ln -s ~/go/bin/unfurl /usr/local/sbin/unfurl


echo "done installing ffuf, subfinder, httpx, waybackurls"


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

cd /opt
git clone https://github.com/internetwache/GitTools.git
ln -s /opt/GitTools/Dumper/gitdumper.sh /usr/local/sbin/gitdumper
ln -s /opt/GitTools/Extractor/extractor.sh /usr/local/sbin/gitextractor
ln -s /opt/GitTools/Finder/gitfinder.py /usr/local/sbin/gitfinder
cd ~/


echo "\n\n\n\n\n\n\n\n\ncleaning up now...\n\n\n\n\n\n\n\n\n"
cd ~
rm -rf ~/first_setup
echo "done cleaning ... exiting ..."
exit

