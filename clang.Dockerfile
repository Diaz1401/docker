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
clang-tidy-17 clang-format-17 clang-tools-17 llvm-17-dev lld-17 \
lldb-17 llvm-17-tools libomp-17-dev libc++-17-dev libc++abi-17-dev \
libclang-common-17-dev libclang-17-dev libclang-cpp17-dev libunwind-17-dev \
libclang-rt-17-dev libpolly-17-dev && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/*
ENV SHELL="bash"
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
CMD ["bash"]
