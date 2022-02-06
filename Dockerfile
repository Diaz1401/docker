FROM ubuntu:focal
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && \
apt install lsb-release wget software-properties-common -y && \
add-apt-repository ppa:ubuntu-toolchain-r/test && \
apt update && apt upgrade -y && \
apt install flex bison ncurses-dev texinfo gperf patch libtool automake libncurses5-dev gawk subversion expat libexpat1-dev python-all-dev binutils-dev bc libcap-dev autoconf libgmp-dev pkg-config libmpc-dev libmpfr-dev autopoint gettext txt2man liblzma-dev libssl-dev libz-dev mercurial wget tar xz-utils gcc-11 g++-11 zstd libc6-dev git curl -y && \
rm -rf /var/lib/apt/lists/*
ENV SHELL="bash"
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
CMD ["bash"]
