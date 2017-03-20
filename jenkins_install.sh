#!/bin/bash

set -o
set -x

hostinfo=`uname -a`
echo "Installing jenkins on host..."
echo ${hostinfo}

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -

echo "deb http://pkg.jenkins-ci.org/debian binary/" | tee -a /etc/apt/sources.list

add-apt-repository ppa:webupd8team/java -y

apt-get update

apt-get install oracle-java8-installer -y

apt-get install -y jenkins
