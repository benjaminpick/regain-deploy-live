#/bin/bash

# Usage: ./start-crawler.sh . 

. $1/build.properties
export LOCKFILE=${LOCKFILE:="/var/run/regain-crawler-live.run"}
export FOLDER="$crawler_folder_live"

if [ -e $crawler_lockupdate_file_live ] ; then
	echo "Cannot start crawler: there is a deployment pending."
	echo "If this isn't the case, please delete $crawler_lockupdate_file_live"
else
	bash "$crawler_folder_live""/start-crawler.sh"
fi
