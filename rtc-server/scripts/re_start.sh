#!/usr/bin/env bash
echo 5000000 > /proc/sys/net/core/rmem_max
ulimit -n 10000
cmd='../bin/open-im-media-server'
echo "openIM media server starting..."
while true
do
    process_num=$(ps -ef| grep ./bin/open-im-media-server |grep -v grep |wc -l)
    if [ ${process_num} -lt 1 ];
    then
      echo "openIM media server restart........"
      nohup ../bin/open-im-media-server --config ../config/config.yaml   --node-ip 127.0.0.1  >> ../logs/open_im_media.log 2>&1 &
      newPid=$(ps aux | grep -w ${cmd} | grep -v grep | awk '{print $2}')
      echo ${newPid}
    else
      echo "openIM media server is already started"
    fi
    sleep 5
done