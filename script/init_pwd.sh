#!/usr/bin/env bash

source ../.env
echo "your user is:$USER"
echo "your password is:$PASSWORD"

sed -i "/^\([[:space:]]*dbMysqlUserName: *\).*/s//\1$USER/;/\([[:space:]]*dbUserName: *\).*/s//\1 $USER/;/\([[:space:]]*accessKeyID: *\).*/s//\1$USER/;" ../config/usualConfig.yaml
sed -i "/^\([[:space:]]*dbMysqlPassword: *\).*/s//\1$PASSWORD/;/\([[:space:]]*dbPassword: *\).*/s//\1$PASSWORD/;/\([[:space:]]*dbPassWord: *\).*/s//\1$PASSWORD/;/\([[:space:]]*secretAccessKey: *\).*/s//\1$PASSWORD/;" ../config/usualConfig.yaml