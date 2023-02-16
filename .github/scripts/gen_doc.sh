LEMMY_HELP=lemmy-help

if test -f ./lemmy-help; then
    LEMMY_HELP=./lemmy-help
fi

# TODO: choose multiple files

$LEMMY_HELP --prefix-func --prefix-alias --prefix-class --prefix-type lua/{PLUGIN_NAME}/init.lua > doc/{PLUGIN_NAME}.txt
