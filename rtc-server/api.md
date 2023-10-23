音视频文件保存api

## 注册新用户

### **简要描述**

 - 获取用户保存的音视频文件 

### **请求URL**


 - `https://xxxxxxx/admin/cms/signal/get_signal_records`


### **请求方式**


 - `POST`

### **请求示例**

  ```json
{
  "operationID": "opid1",
  "showNumber": 10,
  "pageNumber": 1,
  "mediaType": "video",  
  "createTime": "xxx"
}
  ```

### **请求参数**

|   参数名    |  类型  | 必选 | 说明               |
| :---------: | :----: | ---- | :----------------- |
| mediaType | string | 否   | 音视频类型, 填写video或者audio       |
| createTime | int | 否 | 要查询的当天时间戳 |
| senderID    |  string   | 否   | 发起者ID           |
| recvID    |  string   | 否   | 发起者ID           |
| pageNumber    | int | 是   | 当前页           |
| showNumber    | int | 是   | 展示每页页数           |
| operationID | string | 是   | 操作ID             |

### **返回示例**

```json
{
    "errCode": 0,
    "errMsg": "",
    "data": {
        "records": [
            {
                "fileName": "group_750567568_1669117634.mp4",
                "mediaType": "video",
                "roomType": "group",
                "senderID": "3248521183",
                "recvID": "",
                "groupID": "750567568",
                "downloadURL": "http://43.154.157.177/video/group_750567568_1669117634.mp4",
                "createTime": "2022-11-22T19:47:14+08:00",
                "size": "2.45KB"
            }
        ],
        "totalNumber": 1
    }
}
```

### **返回参数**


| 参数名      | 类型   | 说明                  |
| :---------- | :----- | --------------------- |
| errCode     | int    | 0成功，非0失败        |
| errMsg      | string | 错误信息              |
| totalNumber      | int | 总数                |
| FileName     | int    | 文件名        |
| MediaType      | string | 类型              |
| RoomType      | int | 房间类型 单聊群聊视频会议            |
| SenderID     | int    | 发送者ID       |
| RecvID      | string | 接收者ID             |
| GroupID     | string  | 群ID |
| DownloadURL | string  | 下载链接 |
| CreateTime  | time.Time | 创建时间 |
| Size | string  | 大小|

