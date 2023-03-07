FROM ubuntu/bind9
MAINTAINER Simon Maes <si.maes@students.ephec.be>
COPY named.conf /etc/bind/
RUN mkdir /var/log/named
EXPOSE 53/TCP
EXPOSE 53/UDP
CMD ["named", "-g"]
