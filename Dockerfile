FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \ 
  && apt-get install -y ntp \
  && rm -rf /var/lib/apt/lists/* 

EXPOSE 123/udp

ENTRYPOINT ["/usr/sbin/ntpd","-n"]
