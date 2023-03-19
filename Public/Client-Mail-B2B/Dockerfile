FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y mailutils
RUN apt-get install -y net-tools
RUN apt-get install -y mutt
RUN apt-get install -y vim
RUN apt-get install -y iputils-ping
RUN apt-get install -y telnet
RUN useradd -m -p b2b b2b

COPY .muttrc /home/b2b/

VOLUME /home/b2b

USER b2b

CMD ["bash"]
