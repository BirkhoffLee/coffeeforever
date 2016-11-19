#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: build.sh [GITHUB_REPO_OWNER] [GITHUB_REPO_NAME]"
    exit 1
fi

# mkdir for later use
mkdir /var/www
chmod 755 /var/www

# install wget & unzip
echo "deb http://deb.debian.org/debian jessie main" > /etc/apt/sources.list
apt-get update
apt-get install wget unzip -y -q --no-install-recommends

# download, extract and install deps
cd /var/www
wget "https://github.com/$1/$2/archive/master.zip"
unzip master.zip -d .
rm master.zip
cd $2-master
npm install
echo "$(pwd)/$2-master/src" > ~/script_path

# cleanup
apt-get clean
apt-get autoclean
apt-get autoremove --purge -y
apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto)
rm -rf /var/lib/{apt,dpkg,cache,log}/ /tmp/* /var/tmp/*