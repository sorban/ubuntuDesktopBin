#!/bin/sh

apt-get install vim

apt-get install git-core git-gui git-doc

#node
apt-get install g++ curl libssl-dev apache2-utils
git clone git://github.com/ry/node.git
cd node
./configure
make
sudo make install
cd ..
rm -rf node

#npm
curl http://npmjs.org/install.sh | sh
npm install express -g
npm install supervisor -g
npm install html2jade -g

apt-get install xclip

apt-get install ec2-api-tools
ec2-authorize default -p 22
