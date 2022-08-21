FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y \
&& apt install -y wget \
&& rm -rf /var/lib/apt/lists/*
COPY run3 /usr/bin/run
CMD ["run"]
