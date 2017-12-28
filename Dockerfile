FROM ubuntu:latest
MAINTAINER zgcbj(https://github.com/zgcbj)
ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get -y update  && \
  apt-get -y install cron

VOLUME ["/crontab"]
ADD cron.conf /crontab/
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
ENTRYPOINT []
