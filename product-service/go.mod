module github.com/dl911/laracom/product-service

go 1.14

replace google.golang.org/grpc => google.golang.org/grpc v1.26.0

require (
	github.com/golang/protobuf v1.4.2
	github.com/jinzhu/gorm v1.9.16
	github.com/micro/go-micro v1.18.0
	github.com/micro/go-plugins/wrapper/monitoring/prometheus v0.0.0-20200119172437-4fe21aa238fd
	github.com/prometheus/client_golang v1.7.1
	google.golang.org/protobuf v1.23.0
)
