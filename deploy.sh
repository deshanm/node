-#!/bin/sh
ssh jenkins@ubuntu-2gb-nyc2-01 <<EOF
 cd /node
 git pull
 npm install
 pm2 restart all
 exit
EOF
