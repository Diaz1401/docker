FROM debian:stable
ADD build /usr/bin/build
ADD starter /usr/bin/starter
ADD config /
RUN build
CMD ["starter $(cat /config)"]
