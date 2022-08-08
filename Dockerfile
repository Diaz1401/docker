FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y \
&& apt install -y wget ssh sshpass \
&& rm -rf /var/lib/apt/lists/*
ADD rungcc /root
CMD ["/root/rungcc"]
