FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata bc \
    libssl-dev bison flex make git python python3 \
    curl wget zip cpio sudo libxml2 libc6 libstdc++6 \
    software-properties-common --no-install-recommends && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt update && \
    apt upgrade -y
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
ENV SHELL="bash"
CMD ["bash"]
