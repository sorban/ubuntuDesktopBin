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

apt-get install xclip

npm install express -g
npm install supervisor -g
npm install html2jade -g

