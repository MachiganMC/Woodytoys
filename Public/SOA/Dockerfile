FROM ubuntu/bind9:latest

MAINTAINER Tatiana Saragossi <t.saragossi@students.ephec.be>

COPY named.conf /etc/bind/
COPY m2-1.ephec-ti.be /etc/bind/
COPY 11.0.168.192.in-addr.arpa /etc/bind/

WORKDIR /etc/bind

RUN cd /etc/bind
RUN dnssec-keygen -a RSASHA256 -b 1024 -n ZONE m2-1.ephec-ti.be 
RUN dnssec-keygen -a RSASHA256 -b 1024 -n ZONE -f KSK m2-1.ephec-ti.be
RUN cat Km2-1.ephec-ti.be.+008+*.key >> m2-1.ephec-ti.be
RUN dnssec-signzone -t -g -o m2-1.ephec-ti.be m2-1.ephec-ti.be /etc/bind/Km2-1.ephec-ti.be.+008+*.private
RUN dnssec-signzone -A -3 $(head -c 1000 /dev/random | sha1sum | cut -b 1-16) -N INCREMENT -o m2-1.ephec-ti.be -t m2-1.ephec-ti.be

EXPOSE 53/tcp/udp

VOLUME dns

CMD ["named"]

