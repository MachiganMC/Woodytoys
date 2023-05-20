FROM ubuntu/bind9:latest

MAINTAINER Tatiana Saragossi <t.saragossi@students.ephec.be>

COPY named.conf /etc/bind/
COPY m2-1.ephec-ti.be /etc/bind/
COPY 11.0.168.192.in-addr.arpa /etc/bind/
COPY zonesigner.sh /etc/bind/

WORKDIR /etc/bind

RUN cd /etc/bind
RUN dnssec-keygen -a RSASHA256 -b 1024 -n ZONE m2-1.ephec-ti.be 
RUN dnssec-keygen -a RSASHA256 -b 1024 -n ZONE -f KSK m2-1.ephec-ti.be
RUN cat Km2-1.ephec-ti.be.+008+*.key >> m2-1.ephec-ti.be
RUN dnssec-signzone -t -g -o m2-1.ephec-ti.be m2-1.ephec-ti.be /etc/bind/Km2-1.ephec-ti.be.+008+*.private
RUN mkdir /usr/sbin/named-checkzone
RUN chmod +x zonesigner.sh
#RUN ./zonesigner.sh m2-1.ephec-ti.be m2-1.ephec-ti.be


#RUN dnssec-keygen -a RSASHA256 -b 1024 -n ZONE -f KSK m2-1.ephec-ti.be
#RUN dnssec-keygen -f KSK -a NSEC3RSASHA1 -b 4096 -n ZONE m2-1.ephec-ti.be
#RUN for key in `ls Km2-1.ephec-ti.be*.key` do echo "\$INCLUDE $key>> m2-1.ephec-ti.be done

EXPOSE 53/tcp/udp

VOLUME dns

CMD ["named"]

