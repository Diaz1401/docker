FROM ubuntu:focal
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && \
    apt install bc binutils-dev bison build-essential \
    ca-certificates ccache clang cmake curl file flex patchelf \
    git libelf-dev libssl-dev lld make ninja-build python3-dev \
    texinfo u-boot-tools xz-utils zlib1g-dev software-properties-common -y && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt update && \
    apt upgrade -y
RUN apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false && \
    rm -rf /var/lib/apt/lists/*
ENV SHELL="bash"
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
CMD ["bash"]
