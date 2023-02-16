#!/usr/bin/env sh

if [ "$#" -lt 3 ]; then
	echo "setup.sh <PLUGIN_NAME> <PLUGIN_DESCRIPTION> <GITHUB_USERNAME>"
fi

PLUGIN_NAME=$1
PLUGIN_DESCRIPTION=$2
GITHUB_USER=$3

find ! -path "./.git/*"  ! -name 'setup.sh' -type f -exec sed -i '' -e "s/{PLUGIN_NAME}/$PLUGIN_NAME/g; s/{PLUGIN_DESCRIPTION}/$PLUGIN_DESCRIPTION/g; s/{GITHUB_USERNAME}/$GITHUB_USER/g" {} \;

# rm ./setup.sh
