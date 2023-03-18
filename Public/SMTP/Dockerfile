FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y postfix
RUN apt-get install systemctl

COPY main.cf /etc/postfix/
RUN chown -R root:root /etc/postfix/.

VOLUME /var/mail

EXPOSE 25

CMD ["/usr/lib/postfix/sbin/master", "-d"]

