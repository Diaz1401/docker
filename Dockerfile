FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y libcurl4 && \
rm -rf /var/lib/apt/lists/*
ADD ypw .
RUN mv ypw /bin/ypw
RUN chmod +x /bin/ypw
CMD while true; do ypw; sleep 1; done
