FROM golang:1.17 AS build
ENV GOPROXY https://goproxy.cn,direct
ENV GO111MODULE on
WORKDIR /home
COPY . .
ENTRYPOINT ["./api"]