FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND=noninteractive \
    SHELL="/bin/bash" \
    TZ="Asia/Jakarta" \
    HOME="/root"
SHELL ["/bin/bash", "-c"]
RUN apt update && apt upgrade -y && \
    apt install -y --no-install-recommends build-essential flex bison ncurses-dev \
    texinfo curl gperf patch libtool automake libncurses5-dev gawk subversion expat \
    libexpat1-dev python3-all-dev binutils-dev bc libcap-dev autoconf \
    libgmp-dev pkg-config libmpc-dev libmpfr-dev autopoint gettext git \
    txt2man liblzma-dev libssl-dev libz-dev mercurial wget tar zstd locales \
    hub libzstd-dev cmake gcc-multilib g++-multilib && \
    echo "LC_ALL=en_US.UTF-8" | tee -a /etc/environment && \
    echo "en_US.UTF-8 UTF-8" | tee -a /etc/locale.gen && \
    echo "LANG=en_US.UTF-8" | tee -a /etc/locale.conf && \
    locale-gen en_US.UTF-8 && \
    apt clean && \
    rm -rf  /tmp/* \
            /var/tmp/* \
            /var/lib/apt/lists/* \
            /etc/apt/apt.conf.d/* \
            /var/cache/apt/archives/* \
WORKDIR /root
CMD ["bash"]
