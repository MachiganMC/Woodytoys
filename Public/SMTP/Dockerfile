FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y postfix
RUN apt-get install systemctl
RUN apt-get install -y mailutils

COPY main.cf /etc/postfix/

RUN useradd -m contact
RUN useradd -m b2b

VOLUME /var/mail /home

EXPOSE 25

CMD ["/usr/lib/postfix/sbin/master", "-d"]

