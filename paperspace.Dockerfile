FROM graphcore/pytorch-jupyter:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "sed -i 's/focal/lunar/g' /etc/apt/sources.list && \
apt update && \
apt dist-upgrade -y && \
apt install -y tzdata bc libssl-dev bison flex make \
git python3 curl wget zip cpio sudo libxml2 libc6 zstd \
libstdc++6 software-properties-common build-essential && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/*" > /upgrade.sh
CMD ["bash /upgrade.sh"]
