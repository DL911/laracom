FROM golang:1.14-alpine as builder

ENV GO111MODULE on

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk --no-cache add git

WORKDIR /app/laracom-demo-cli

COPY . .

RUN go env -w GOPROXY=https://goproxy.cn,direct && go mod tidy

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o laracom-demo-cli

FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk update && apk add --no-cache bash ca-certificates

RUN mkdir /app
WORKDIR /app

COPY --from=builder /app/laracom-demo-cli/laracom-demo-cli .

CMD ["./laracom-demo-cli"]

EXPOSE 8181