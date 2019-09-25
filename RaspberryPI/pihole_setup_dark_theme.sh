#!/usr/bin/env bash

#check for root
if [ "$(whoami)" != "root" ]; then
    echo "You must be root to do this"
    su -c "$0 $*"
    exit
fi

cd /var/www/html/
wget https://raw.githubusercontent.com/lkd70/PiHole-Dark/master/install.sh
chmod +x install.sh
./install.sh
