FROM ubuntu:latest

RUN apt update 
RUN apt install -y tzdata
ENV TZ="Asia/Jakarta"
RUN apt install -y bc glibc glibcxx libssl-dev bison flex build-essential make git python curl wget zip unzip cpio sudo libxml2 default-jdk

ENV HOME /root

WORKDIR /root

CMD ["bash"]
