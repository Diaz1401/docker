FROM ubuntu:focal
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt update && apt install -y tzdata bc \
    libssl-dev bison flex make git python \
    curl wget zip cpio sudo libxml2 libc6 \
    libstdc++6 software-properties-common && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt update && \
    apt upgrade -y && \
    apt-get dist-upgrade
    
ENV TZ="Asia/Jakarta"
ENV HOME /root
WORKDIR /root
CMD ["bash"]
