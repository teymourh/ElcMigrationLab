#!/bin/bash
# Redis install
sudo yum -y install gcc make # install GCC compiler
cd /usr/local/src
sudo wget http://download.redis.io/releases/redis-5.0.6.tar.gz
sudo tar xvzf redis-5.0.6.tar.gz
sudo rm -f redis-stable.tar.gz
cd redis-5.0.6
sudo make distclean
sudo make
sudo cp src/redis-server /usr/local/bin/
sudo cp src/redis-cli /usr/local/bin/
redis-server &
