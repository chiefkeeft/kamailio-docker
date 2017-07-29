FROM debian:jessie
COPY ./build.sh /tmp/
COPY ./start.sh /
COPY kamailio.cfg /tmp/
COPY settings.cfg /tmp/
RUN /bin/sh /tmp/build.sh
WORKDIR /root
CMD ["/bin/sh", "/start.sh"]


