#!/bin/sh

usage() {
	echo "usage: basename $0 <repo name>"
}

if [ $# -ne 1 ]; then
	usage
	exit 1
fi

REPO_NAME=$1

mkdir $REPO_NAME
cd $REPO_NAME
git init
touch README
git add README
git commit -m 'first commit'
git remote add origin git@github.com:sorban/$REPO_NAME.git
git push -u origin master