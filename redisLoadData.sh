#!/bin/bash
# Redis-Cli load data
cat sceneList.csv | awk -F',' '{print " SET \""$1"\" \""$2 "\"\n"}'| redis-cli --pipe