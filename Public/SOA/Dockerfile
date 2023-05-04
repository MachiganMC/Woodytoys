FROM ubuntu/bind9:latest

MAINTAINER Tatiana Saragossi <t.saragossi@students.ephec.be>

COPY named.conf /etc/bind/
COPY m2-1.ephec-ti.be /etc/bind/
COPY 11.0.168.192.in-addr.arpa /etc/bind/ 

EXPOSE 53/tcp/udp

CMD ["mkdir", "-p", "/var/log/named/"]
CMD ["named"]

