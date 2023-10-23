#!/usr/bin/env bash
rm open-im-media-server.tar.gz
rm ../../open-im-media-server -rf
mkdir ../../open-im-media-server
cp ../bin/ ../../open-im-media-server -r
cp ../savefile/ ../../open-im-media-server -r
cp ../config/ ../../open-im-media-server -r
cp ../scripts/ ../../open-im-media-server -r
cp ../LICENSE ../../open-im-media-server

cp ../open-im-media-server-Deployment.md ../../open-im-media-server
mkdir -p ../../open-im-media-server/logs
tar -zcvf  open-im-media-server.tar.gz  ../../open-im-media-server/


