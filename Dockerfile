FROM debian:stable
ADD build /usr/bin/build
ADD starter /usr/bin/starter
ADD config /config
RUN build
CMD ["bash -c 'starter $(cat /config)'"]
