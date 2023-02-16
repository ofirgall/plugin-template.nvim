#!/usr/bin/env sh

if [ "$#" -lt 3 ]; then
	echo "setup.sh <PLUGIN_NAME> <PLUGIN_DESCRIPTION> <GITHUB_USERNAME>"
fi

PLUGIN_NAME=$1
PLUGIN_DESCRIPTION=$2
GITHUB_USER=$3

find . -type f -print0 | xargs -0 sed -i '' -e "s/commit-prefix/$PLUGIN_NAME/g" -e "s/test description/$PLUGIN_DESCRIPTION/g" -e "s/ofirgall/$GITHUB_USER/g"

# rm ./setup.sh
