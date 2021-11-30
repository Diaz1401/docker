FROM ubuntu:focal

RUN apt update 
RUN apt install -y tzdata software-properties-common
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt update && apt upgrade -y
ENV TZ="Asia/Jakarta"
RUN apt install -y gcc bc libssl-dev bison flex build-essential make git python curl wget zip unzip cpio sudo libxml2 libc6 libstdc++6 default-jdk
RUN apt-get dist-upgrade
RUN strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX

ENV HOME /root

WORKDIR /root

CMD ["bash"]
