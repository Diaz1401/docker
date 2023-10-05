FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && \
apt install lsb-release wget software-properties-common gnupg -y && \
wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc && \
echo "deb http://apt.llvm.org/bookworm/ llvm-toolchain-bookworm main" | tee -a /etc/apt/sources.list && \
apt update && apt upgrade -y && \
apt install -y bc binutils-dev u-boot-tools bison gcc g++ \
ca-certificates ccache clang cmake curl ninja-build file flex patchelf libelf-dev \
libssl-dev make python3-all-dev texinfo xz-utils zlib1g-dev hub help2man \
clang-tidy-18 clang-format-18 clang-tools-18 llvm-18-dev lld-18 \
lldb-18 llvm-18-tools libomp-18-dev libc++-18-dev libc++abi-18-dev \
libclang-common-18-dev libclang-18-dev libclang-cpp18-dev libunwind-18-dev \
libclang-rt-18-dev libpolly-18-dev && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/*
ENV SHELL="bash"
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
CMD ["bash"]
