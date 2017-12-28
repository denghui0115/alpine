FROM alpine:3.7

RUN echo -e "https://mirrors.aliyun.com/alpine/v3.7/main\n\
https://mirrors.aliyun.com/alpine/v3.7/community" > /etc/apk/repositories

RUN apk update && apk add ca-certificates && \ 
    apk add tzdata && \ 
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \ 
    echo "Asia/Shanghai" > /etc/timezone && \
    export LANG=zh_CN.UTF-8
    
    
