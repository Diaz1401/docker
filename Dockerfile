FROM ubuntu:impish
RUN apt update && apt install -y tzdata bc libssl-dev bison flex build-essential make git python curl wget zip unzip cpio sudo libxml2 libc6 default-jdk
ENV TZ="Asia/Jakarta"
ENV HOME /root
WORKDIR /root
CMD ["bash"]
