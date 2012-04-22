#!/bin/sh

apt-get update

apt-get install make
apt-get install vim

apt-get install git-core git-gui git-doc

#node
if [ $1 == '-n' ]; then
	apt-get install g++ curl libssl-dev apache2-utils
	git clone git://github.com/ry/node.git
	cd node
	./configure
	make
	sudo make install
	cd ..
	rm -rf node
fi

#npm
curl http://npmjs.org/install.sh | sh
npm install express -g
npm install supervisor -g
npm install html2jade -g

apt-get install xclip

apt-get install ec2-api-tools
ec2-authorize default -p 22

iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to 8080
iptables-save

apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
apt-get update
apt-get install mongodb-10gen
