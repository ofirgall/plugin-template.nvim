#!/usr/bin/env sh

if [ "$#" -lt 3 ]; then
	echo "setup.sh <PLUGIN_NAME> <PLUGIN_DESCRIPTION> <GITHUB_USERNAME>"
fi

PLUGIN_NAME=$1
PLUGIN_DESCRIPTION=$2
GITHUB_USER=$3

# Search & Replace {} placeholders
find ! -path "./.git/*"  ! -name 'setup.sh' -type f -exec sed -i '' -e "s/{PLUGIN_NAME}/$PLUGIN_NAME/g; s/{PLUGIN_DESCRIPTION}/$PLUGIN_DESCRIPTION/g; s/{GITHUB_USERNAME}/$GITHUB_USER/g" {} \;

# Replace directories
mv lua/PLUGIN_NAME lua/$PLUGIN_NAME

# Replace README files
rm -f README.md
mv PLUGIN_README.md README.md

# Generate doc
./.github/scripts/gen_doc.sh
./.github/scripts/update_readme.sh

# Activate workflows
mv ./.github/workflows_disabled/ ./.github/workflows

# Destroy setup.sh
rm ./setup.sh
