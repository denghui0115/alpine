FROM alpine:3.7

ENV LANG=zh_CN.UTF-8

RUN apk update && apk add ca-certificates && \ 
    apk add tzdata && \ 
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \ 
    echo "Asia/Shanghai" > /etc/timezone 
    
    
