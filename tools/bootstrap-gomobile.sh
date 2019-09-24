#!/bin/bash

go get golang.org/x/mobile/cmd/gomobile golang.org/x/tools/go/packages
PATH="$PATH:$GOPATH/bin" gomobile init
mkdir -p $GOPATH/src/github.com/muun/muun/
ln -s $PWD/libwallet $GOPATH/src/github.com/muun/muun/libwallet
cd libwallet && go get
