module github.com/livekit/livekit-server

go 1.16

require (
	github.com/bep/debounce v1.2.1
	github.com/dustin/go-humanize v1.0.0
	github.com/elliotchance/orderedmap v1.4.0
	github.com/gammazero/deque v0.1.0
	github.com/gammazero/workerpool v1.1.2
	github.com/go-logr/logr v1.2.3
	github.com/go-redis/redis/v8 v8.11.5
	github.com/google/wire v0.5.0
	github.com/gorilla/websocket v1.5.0
	github.com/hashicorp/golang-lru v0.5.4
	github.com/livekit/protocol v1.0.2-0.20220817073830-613285ea6f32
	github.com/livekit/rtcscore-go v0.0.0-20220524203225-dfd1ba40744a
	github.com/mackerelio/go-osstat v0.2.1
	github.com/magefile/mage v1.13.0
	github.com/maxbrunsfeld/counterfeiter/v6 v6.5.0
	github.com/mitchellh/go-homedir v1.1.0
	github.com/olekukonko/tablewriter v0.0.5
	github.com/pion/ice/v2 v2.2.7
	github.com/pion/interceptor v0.1.12
	github.com/pion/logging v0.2.2
	github.com/pion/rtcp v1.2.10
	github.com/pion/rtp v1.7.13
	github.com/pion/sdp/v3 v3.0.6
	github.com/pion/stun v0.3.5
	github.com/pion/transport v0.13.1
	github.com/pion/turn/v2 v2.0.8
	github.com/pion/webrtc/v3 v3.1.43
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.13.0
	github.com/rs/cors v1.8.2
	github.com/sebest/xff v0.0.0-20210106013422-671bd2870b3a
	github.com/stretchr/testify v1.8.0
	github.com/thoas/go-funk v0.9.2
	github.com/twitchtv/twirp v8.1.2+incompatible
	github.com/ua-parser/uap-go v0.0.0-20211112212520-00c877edfe0f
	github.com/urfave/cli/v2 v2.3.0
	github.com/urfave/negroni v1.0.0
	go.uber.org/atomic v1.10.0
	go.uber.org/zap v1.22.0
	google.golang.org/protobuf v1.28.1
	gopkg.in/yaml.v3 v3.0.1
)

require (
	github.com/OpenIMSDK/getcdv3 v1.0.1
	github.com/OpenIMSDK/open_log v1.0.0
	github.com/OpenIMSDK/open_utils v1.0.1
	github.com/cpuguy83/go-md2man/v2 v2.0.0 // indirect
	github.com/d5/tengo/v2 v2.10.1
	github.com/golang/protobuf v1.5.2
	github.com/google/subcommands v1.2.0 // indirect
	github.com/livekit/server-sdk-go v0.10.5
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	go.etcd.io/etcd/api/v3 v3.5.5
	go.etcd.io/etcd/client/v3 v3.5.5
	golang.org/x/net v0.0.0-20220708220712-1185a9018129
	golang.org/x/xerrors v0.0.0-20220411194840-2f41105eb62f // indirect
	google.golang.org/grpc v1.49.0
)
