#!/bin/bash
set -e
set -u
set -o pipefail


cd /var/www/Module-Build-0.4210


perl Build.PL

./Build
./Build test
sudo ./Build install

cd /var/www/Bio-SamTools-1.43

echo y | perl INSTALL.pl

cd /var/www/JBrowse-1.12.1-dev/

./setup.sh

mkdir dataFiles

exit 0
