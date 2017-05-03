-#!/bin/sh
ssh jenkins@ubuntu-2gb-nyc2-01 <<EOF
 # Absolute path to this script, e.g. /home/user/bin/foo.sh
 SCRIPT=$(readlink -f "$0")
 # Absolute path this script is in, thus /home/user/bin
 SCRIPTPATH=$(dirname "$SCRIPT")
 echo $SCRIPTPATH
 cd /node
 git pull
 npm install
 pm2 restart all
 exit
EOF
