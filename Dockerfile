From  alpine:latest
label author="nginx Docker"
ENV PKG_RELEASE 1
# 更新系统和安装 NGINX work ok
RUN apk update && \
    apk upgrade && \
    apk add nginx && \
    apk add curl && \
    hostname >/tmp/hname.txt

EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["ngixn","-g","daemon off;"]

