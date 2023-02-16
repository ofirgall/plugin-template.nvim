#!/usr/bin/env bash

LEMMY_HELP=lemmy-help

if test -f ./lemmy-help; then
    LEMMY_HELP=./lemmy-help
fi

DOC_FILE=doc/{PLUGIN_NAME}.txt
# TODO: choose multiple files

$LEMMY_HELP --prefix-func --prefix-alias --prefix-class --prefix-type lua/{PLUGIN_NAME}/init.lua > $DOC_FILE
