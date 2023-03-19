FROM dovecot/dovecot

EXPOSE 110
EXPOSE 143

RUN useradd -m -p contacact contact
RUN useradd -m -p b2b b2b

COPY dovecot.conf /etc/dovecot/

CMD ["/usr/sbin/dovecot", "-F"]
