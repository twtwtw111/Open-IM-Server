CGO_ENABLED=0 GOOS=linux GOARCH=amd64
cd script/
./batch_build_all_service.sh
ssh root@47.242.180.83 "cd /data/Open-IM-Server/script && ./stop_all.sh"
rsync -avP ../bin root@47.242.180.83:/data/Open-IM-Server/
ssh root@47.242.180.83 "cd /data/Open-IM-Server/script && ./start_all.sh"
ssh root@47.242.180.83 "cd /data/Open-IM-Server/script && ./check_all.sh"