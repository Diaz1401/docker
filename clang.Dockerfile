FROM debian:bookworm-slim
ARG LLVM_VER="19"
ENV DEBIAN_FRONTEND=noninteractive \
    SHELL="/bin/bash" \
    TZ="Asia/Jakarta" \
    HOME="/root"
SHELL ["/bin/bash", "-c"]
RUN apt update && apt install -y --no-install-recommends \
    lsb-release wget software-properties-common gnupg && \
    wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc && \
    echo "deb http://apt.llvm.org/bookworm/ llvm-toolchain-bookworm main" | tee -a /etc/apt/sources.list && \
    apt update && apt upgrade -y && \
    apt install -y --no-install-recommends \
    bc binutils-dev u-boot-tools bison gcc g++ \
    ca-certificates ccache clang lld cmake curl ninja-build file flex patchelf libelf-dev \
    libssl-dev make python3-all-dev texinfo xz-utils zlib1g-dev hub help2man locales \
    clang-${LLVM_VER} lldb-${LLVM_VER} lld-${LLVM_VER} clangd-${LLVM_VER} clang-tidy-${LLVM_VER} \
    clang-format-${LLVM_VER} clang-tools-${LLVM_VER} llvm-${LLVM_VER}-dev llvm-${LLVM_VER}-tools \
    libomp-${LLVM_VER}-dev libc++-${LLVM_VER}-dev libc++abi-${LLVM_VER}-dev libclang-common-${LLVM_VER}-dev \
    libclang-${LLVM_VER}-dev libclang-cpp${LLVM_VER}-dev libunwind-${LLVM_VER}-dev \
    libclang-rt-${LLVM_VER}-dev libpolly-${LLVM_VER}-dev ca-certificates && \
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
