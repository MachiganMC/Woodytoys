FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y postfix
RUN apt-get install systemctl
RUN apt-get install -y mailutils
RUN apt-get install -y iputils-ping
RUN apt-get install -y telnet

COPY main.cf /etc/postfix/

#RUN useradd -m -p contact contact
#RUN useradd -m -p b2b b2b

VOLUME /var/mail /home

EXPOSE 25

CMD ["/usr/lib/postfix/sbin/master", "-d"]

