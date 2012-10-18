#/bin/bash

. build.properties
export LOCK_FILE="/var/run/regain-crawler-live.run"
export FOLDER="/var/www/regain/regain-svn/build/runtime/crawler-live"

if [ -e $crawler_lockupdate_file_live ] ; then
	echo "Cannot start crawler: there is a deployment pending."
	echo "If this isn't the case, please delete $crawler_lockupdate_file_live"
else
	bash "$crawler_folder_live""/start-crawler.sh"
fi
