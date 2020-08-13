module github.com/dl911/laracom/user-cli

go 1.14

replace google.golang.org/grpc => google.golang.org/grpc v1.26.0

require (
	github.com/dl911/laracom/user-service v0.0.0-20200813081607-531aba146d69
	github.com/micro/cli v0.2.0
	github.com/micro/go-micro v1.18.0
	golang.org/x/net v0.0.0-20200707034311-ab3426394381
)
