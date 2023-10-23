#!/usr/bin/env bash
cmd='open-im-media-server'
pid=$(ps aux | grep -w ${cmd} | grep -v grep | awk '{print $2}')
echo ${pid}
kill -9 ${pid}


cmd='re_start.sh'
pid=$(ps aux | grep -w ${cmd} | grep -v grep | awk '{print $2}')
echo ${pid}
kill -9 ${pid}
