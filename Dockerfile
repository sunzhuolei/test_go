FROM golang:1.17 AS build
ENV GOPROXY https://goproxy.cn,direct
ENV GO111MODULE on
WORKDIR /app
COPY . .
RUN mkdir publish && cp ./test publish

COPY --from=build /app/publish .
ENTRYPOINT ["./api"]