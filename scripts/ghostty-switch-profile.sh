#!/bin/bash

PROFILE="$1"
CONFIG_FILE="$HOME/.config/ghostty/config"
CONFIG_TARGET="$HOME/.config/ghostty/config.$PROFILE"

function error-nofile {
    printf "ERROR: "
    printf "The file $CONFIG_TARGET does not exist.\n"
}

function show-help {
    printf "ghostty-switch-profile \$PROFILE\n"
    printf "or\n"
    printf "ghostty-switch-profile help \n\n"
    printf "Make sure a config source file exists: \n"
    printf "$HOME/.config/ghostty/config.<\$PROFILE>\n"
}

function switch-profile {
    rm -f $CONFIG_FILE
    ln -s $CONFIG_TARGET $CONFIG_FILE
    printf "Switched to $PROFILE profile.\n"
    printf "Restart ghostty to use the $PROFILE config.\n"
}

function main {
    case $PROFILE in
        help)
            show-help
            ;;
        *)
            if [ ! -f "$CONFIG_TARGET" ]
            then
                   show-help
                   error-nofile
                   exit 1
            fi
            switch-profile
            ;;
    esac
}

main
