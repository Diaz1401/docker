FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
apt install -y build-essential flex bison ncurses-dev texinfo curl \
gperf patch libtool automake libncurses5-dev gawk subversion expat \
libexpat1-dev python-all-dev binutils-dev bc libcap-dev autoconf \
libgmp-dev pkg-config libmpc-dev libmpfr-dev autopoint gettext git \
txt2man liblzma-dev libssl-dev libz-dev mercurial wget tar zstd \
binutils-aarch64-linux-gnu binutils-arm-linux-gnueabi \
gcc-multilib g++-multilib && \
rm -rf /var/lib/apt/lists/*
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
ENV SHELL="bash"
CMD ["bash"]
