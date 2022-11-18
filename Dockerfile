FROM debian:stable-slim
ADD build /usr/bin/build
ADD starter /usr/bin/starter
RUN build > /dev/null 2>&1
RUN rm -rf /usr/bin/build
CMD ["starter"]
