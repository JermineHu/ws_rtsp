FROM alpine:edge
MAINTAINER Jermine.hu@qq.com
COPY etc /etc
COPY lib /lib
COPY lib64 /lib64
COPY usr /usr
COPY var /var
COPY runit /etc/service
RUN apk add --no-cache nginx runit ;\
    mkdir /var/log/ws_rtsp && mkdir /run/nginx
EXPOSE 80 8088
CMD runsvdir /etc/service
