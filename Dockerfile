FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y \
&& apt install -y wget \
&& rm -rf /var/lib/apt/lists/*
ADD runclang /root
CMD ["/root/runclang"]
