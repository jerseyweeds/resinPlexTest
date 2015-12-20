#!/bin/bash

set -o errexit
set -o pipefail

#Add the GPG key and add source repositories, there are 3 lines here
wget -O - http://shell.ninthgate.se/packages/shell-ninthgate-se-keyring.key | sudo apt-key add -
echo "deb http://www.deb-multimedia.org wheezy main non-free" | sudo tee -a /etc/apt/sources.list.d/deb-multimedia.list
echo "deb http://shell.ninthgate.se/packages/debian wheezy main" | sudo tee -a /etc/apt/sources.list.d/plex.list

#Update your packages
sudo apt-get update

#Install this magic Debian multimedia keyring
sudo apt-get install deb-multimedia-keyring -y --force-yes

#Update packages again
sudo apt-get update

#Install the Plex Media Server on Ubuntu
sudo apt-get install plexmediaserver -y

