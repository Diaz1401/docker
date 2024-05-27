FROM debian:bookworm-slim
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt update && \
apt install lsb-release wget software-properties-common gnupg -y && \
wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc && \
echo "deb http://apt.llvm.org/bookworm/ llvm-toolchain-bookworm main" | tee -a /etc/apt/sources.list && \
apt update && apt upgrade -y && \
apt install -y bc binutils-dev u-boot-tools bison gcc g++ \
ca-certificates ccache clang lld cmake curl ninja-build file flex patchelf libelf-dev \
libssl-dev make python3-all-dev texinfo xz-utils zlib1g-dev hub help2man \
clang-tidy-19 clang-format-19 clang-tools-19 llvm-19-dev lld-19 \
lldb-19 llvm-19-tools libomp-19-dev libc++-19-dev libc++abi-19-dev \
libclang-common-19-dev libclang-19-dev libclang-cpp19-dev libunwind-19-dev \
libclang-rt-19-dev libpolly-19-dev locales && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/*
ENV SHELL="bash"
ENV TZ="Asia/Jakarta"
ENV HOME="/root"
CMD ["bash"]
