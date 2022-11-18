FROM debian:stable
ADD build.sh .
RUN ./build.sh
ADD starter /usr/bin/starter
CMD ["bash"]
