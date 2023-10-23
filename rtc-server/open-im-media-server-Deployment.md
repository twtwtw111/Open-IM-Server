# open-im-media-server音视频服务部署文档

## 1.解压

tar -zxvf open-im-media-server.tar.gz

## 2. 开放端口

| RTC端口   | 说明                 | 操作                                               |
| --------- | -------------------- | -------------------------------------------------- |
| TCP: 7880 | ws协议，通话房间管理 | 端口放行或nginx反向代理（参考第5部分），关闭防火墙 |
| TCP: 7881 | 音视频通话           | 端口放行，关闭防火墙                               |
| UDP: 7882 | 音视频通话           | 端口放行，关闭防火墙                               |

## 3. 配置说明

```
查看config/config.ymal配置项说明 
```

## 4.修改scripts/re_start.sh启动脚本

```
nohup ../bin/open-im-media-server --config ../config/config.yaml   --node-ip 127.0.0.1  >> ../logs/open_im_media.log 2>&1 &
修改127.0.0.1为本机网外ip， 注意一定是本机所在的外网ip，不要通过nginx反代
```

## 5.关于nginx配置模板

```
upstream im_open_rtc{
            server 127.0.0.1:7880;        #rtc 音视频通话 服务器地址 根据部署情况可指定多台
            }           
            
location ^~/open_rtc/ {  #7880 rtc

    			listen 443;
        		server_name web.rentsoft.cn;   #1 web im 端 域名
       			ssl on;
        		ssl_certificate /etc/nginx/conf.d/ssl/web.xx.xx.crt; #2 证书
        		ssl_certificate_key /etc/nginx/conf.d/ssl/web.xx.xx.key; #3 证书
        
                proxy_http_version 1.1;
                proxy_set_header Upgrade $http_upgrade;
                proxy_set_header Connection "Upgrade";
                proxy_set_header X-real-ip $remote_addr;
                proxy_set_header X-Forwarded-For $remote_addr;
                proxy_pass http://im_open_rtc/;
              }
                               
```

### 6.启动、停止

```
启动服务
scripts下执行
chmod +x re_start.sh 
nohup ./re_start.sh  >> ../logs/restart.log 2>&1 &
```

```
停止服务
scripts下执行
chmod +x stop.sh
./stop.sh
```



