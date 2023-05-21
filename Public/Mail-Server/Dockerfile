FROM dovecot/dovecot

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y postfix
RUN apt-get install -y systemctl
RUN apt-get install -y mailutils
RUN apt-get install -y iputils-ping
RUN apt-get install -y telnet

#ajout secu
RUN apt-get install -y opendkim
RUN mkdir -p /etc/opendkim/
RUN mv /etc/opendkim.conf /etc/opendkim/
RUN ln -s /etc/opendkim/opendkim.conf /etc/opendkim.conf

RUN openssl genrsa -out /etc/opendkim/opendkim.key 1024
RUN openssl rsa -in /etc/opendkim/opendkim.key -pubout -out /etc/opendkim/opendkim.pub.key
RUN chmod "u=rw,o=,g=" /etc/opendkim/opendkim.key
RUN chown opendkim:opendkim /etc/opendkim/opendkim.key

COPY main.cf /etc/postfix/
COPY dovecot.conf /etc/dovecot/
COPY start.sh ./
COPY KeyTable /etc/opendkim
COPY SigningTable /etc/opendkim
COPY KeyTable /etc/opendkim
COPY TrustedHotsts /etc/opendkim

RUN chmod 111 start.sh

RUN useradd -rm -p $(openssl passwd -1 contact) contact
RUN useradd -rm -p $(openssl passwd -1 b2b) b2b

#VOLUME /home

EXPOSE 25
EXPOSE 110
EXPOSE 143
EXPOSE 587

CMD ./start.sh ; sleep infinity

