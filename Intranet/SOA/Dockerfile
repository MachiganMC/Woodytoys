FROM ubuntu/bind9:latest

MAINTAINER Tatiana Saragossi <t.saragossi@students.ephec.be>

COPY named.conf /etc/bind/

EXPOSE 53/tcp/udp

CMD ["mkdir", "-p", "/var/log/named/"]
CMD ["named"]

