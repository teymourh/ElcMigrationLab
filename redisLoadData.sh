#!/bin/bash
# Redis-Cli load data
tar -xzvf sceneList.tar.gz
cat sceneList.csv | awk -F',' '{print " SET \""$1"\" \""$2 "\"\n"}'| redis-cli --pipe