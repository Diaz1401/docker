FROM ubuntu:jammy
ARG LLVM_VER="20"
ENV DEBIAN_FRONTEND=noninteractive \
    SHELL="/bin/bash" \
    TZ="Asia/Jakarta" \
    HOME="/root"
SHELL ["/bin/bash", "-c"]
RUN apt update && apt install -y --no-install-recommends lsb-release wget software-properties-common gnupg && \
    wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc && \
    echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy main" | tee -a /etc/apt/sources.list && \
    apt update && apt upgrade -y && \
    apt install -y --no-install-recommends bc binutils-dev u-boot-tools bison gcc g++ ca-certificates ccache clang lld cmake curl ninja-build file flex patchelf \
    libelf-dev libssl-dev make python3-all-dev texinfo xz-utils zlib1g-dev hub help2man locales ca-certificates build-essential ncurses-dev gperf patch libtool \
    automake libncurses5-dev gawk subversion expat libexpat1-dev binutils-dev bc libcap-dev autoconf libgmp-dev pkg-config libmpc-dev libmpfr-dev autopoint gettext \
    git txt2man liblzma-dev libz-dev mercurial tar zstd locales libzstd-dev gcc-multilib g++-multilib \
    clang-${LLVM_VER} lldb-${LLVM_VER} lld-${LLVM_VER} libllvm-${LLVM_VER}-ocaml-dev ${libllvmLLVM_VER} llvm-${LLVM_VER} llvm-${LLVM_VER}-dev \
    llvm-${LLVM_VER}-doc llvm-${LLVM_VER}-examples llvm-${LLVM_VER}-runtime clang-tools-${LLVM_VER} clang-${LLVM_VER}-doc libclang-common-${LLVM_VER}-dev \
    libclang-${LLVM_VER}-dev libclang1-${LLVM_VER} clang-format-${LLVM_VER} python3-clang-${LLVM_VER} clangd-${LLVM_VER} clang-tidy-${LLVM_VER} \
    libclang-rt-${LLVM_VER}-dev libpolly-${LLVM_VER}-dev libfuzzer-${LLVM_VER}-dev libc++-${LLVM_VER}-dev libc++abi-${LLVM_VER}-dev libomp-${LLVM_VER}-dev \
    libclc-${LLVM_VER}-dev libunwind-${LLVM_VER}-dev libmlir-${LLVM_VER}-dev mlir-${LLVM_VER}-tools libbolt-${LLVM_VER}-dev bolt-${LLVM_VER} \
    flang-${LLVM_VER} \libllvmlibc-${LLVM_VER}-dev && \
    echo "LC_ALL=en_US.UTF-8" | tee -a /etc/environment && \
    echo "en_US.UTF-8 UTF-8" | tee -a /etc/locale.gen && \
    echo "LANG=en_US.UTF-8" | tee -a /etc/locale.conf && \
    locale-gen en_US.UTF-8 && apt clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* /etc/apt/apt.conf.d/* /var/cache/apt/archives/*
WORKDIR /root
CMD ["bash"]
