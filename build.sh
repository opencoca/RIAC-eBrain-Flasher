#!/usr/bin/env bash
# rm -fr build dist
VERSION=0.1.0
NAME=eBrain Update Wizard

pyinstaller --log-level=DEBUG \
            --noconfirm \
            --windowed \
            build-on-mac.spec

# https://github.com/sindresorhus/create-dmg
create-dmg dist/$NAME-$VERSION.app
mv "$NAME-$VERSION 0.0.0.dmg" dist/$NAME-$VERSION.dmg
