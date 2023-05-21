$ORIGIN m2-1.ephec-ti.be.
$TTL 86400
@       IN      SOA     soa.m2-1.ephec-ti.be.      hostmaster.m2-1.ephec-ti.be. (
                        2001062501 ;
                        21600      ; 
                        3600       ; 
                        604800     ; 
                        86400 )

        IN      NS      soa.m2-1.ephec-ti.be.

@ 10800 IN MX 10 mail
@ 10800 IN SPF "v=spf1 a ip4:192.168.0.6 mx include:_spf.google.com ?all"
@ 10800 IN TXT "v=spf1 a ip4:192.168.0.6 mx include:_spf.google.com ?all"
dkim._domainkey 1000 IN TXT "v=DKIM1; k=rsa; t=y;  p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDgegxIM+FCbsQq1yn1xTI+NcMlbXZorrlpxBWF6h7YzI5sjZXh7KiZNabl7B6zqdbHCinmsjxGZB/0GvqyyFKtOs4ZPIDNrSQbhK/h/4jSbkDT9c1NhmSELVTl0ZZMaj+hnNhlgVLF3zP4TD0bx9tF/4tZlA/ezmhaP56i4C07swIDAQAB;"

www	IN      A       192.168.0.10
b2b IN      A	192.168.0.10
mail    IN      A       192.168.0.6
soa   IN      A       192.168.0.4

