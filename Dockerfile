FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y \
&& apt install -y wget \
&& rm -rf /var/lib/apt/lists/*
ADD run /usr/bin
CMD ["bash"]
