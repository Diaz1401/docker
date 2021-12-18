FROM ubuntu:impish
RUN export DEBIAN_FRONTEND=noninteractive && \
	apt update && \
	apt install -y tzdata bc libssl-dev bison \
	flex make git python curl \
	wget zip cpio sudo libxml2 libc6
ENV TZ="Asia/Jakarta"
ENV HOME /root
WORKDIR /root
CMD ["bash"]
