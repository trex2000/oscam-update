#!/bin/sh 
echo "Started oscam update"
cd /mnt/local/work
main_url="http://www.streamboard.tv/svn/oscam/trunk"
backup_url="http://www.oscam.cc/svn/oscam-mirror/trunk"
if [ ! -d "$DIRECTORY" ]; then
	if curl -s -m 5 --head  --request GET $main_url | grep "200 OK" > /dev/null; then 
		echo Main Repo is  working
		svn checkout $main_url oscam-svn
		cd oscam-svn
	else
		echo Streamboard is down, falling back
		svn checkout $backup_url oscam-svn_backup
		cd oscam-svn_backup
	fi
fi
svn update
if [ ! -d "build" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir build
fi
cd build
cmake ..
make
systemctl stop oscam 
make install
systemctl restart oscam
sleep 10
