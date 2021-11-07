FROM ubuntu:20.04
RUN apt update && \
  apt install curl -y && \
  curl -s https://raw.githubusercontent.com/P3TERX/ssh2actions/main/tmate2actions.sh | bash
