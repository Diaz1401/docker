FROM ubuntu:20.04
RUN apt update && \
  apt install curl xz-utils wget openssh-client -y && \
  curl -s https://raw.githubusercontent.com/P3TERX/ssh2actions/main/tmate2actions.sh | bash
