FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tzdata bc \
libssl-dev bison flex make git python python3 \
curl wget zip cpio sudo libxml2 libc6 zstd \
libstdc++6 software-properties-common && \
add-apt-repository ppa:ubuntu-toolchain-r/test && \
apt update && \
apt upgrade -y && \
rm -rf /var/lib/apt/lists/*
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
ENV SHELL="bash"
CMD ["bash"]
