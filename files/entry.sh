#!/bin/sh

export IRCGRAMPP_CONFIG_DIR="/config"
export IRCGRAMPP_DATA_DIR="/data"

if [ ! -d "$IRCGRAMPP_CONFIG_DIR/bridges" ]; then
    mkdir -p "$IRCGRAMPP_CONFIG_DIR/bridges"
fi

if [ ! -d "$IRCGRAMPP_CONFIG_DIR/plugins" ]; then
    mkdir -p "$IRCGRAMPP_CONFIG_DIR/plugins"
fi

if [ ! -e "$IRCGRAMPP_CONFIG_DIR/config.yml" ]; then
    cp -a /def/config.yml "$IRCGRAMPP_CONFIG_DIR/config.yml"
fi

if [ "$1" = 'config' ]; then
    exec /usr/bin/ircgrampp config
    exit $?
else
    if [ "x$1" = "x" ]; then
        if [ "x$ONLY" = "x" ]; then
            exec /usr/bin/ircgrampp start $EXTRAPARAMS
            exit $?
        else
            exec /usr/bin/ircgrampp start --only $ONLY $EXTRAPARAMS
            exit $?
        fi
    else
        echo "Unknow command $1" > /dev/stderr
        exit 10
    fi
fi
