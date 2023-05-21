$ORIGIN m2-1.ephec-ti.be.
$TTL 86400
@       IN      SOA     soapub.m2-1.ephec-ti.be.      hostmaster.m2-1.ephec-ti.be. (
                        2001062501 ;
                        21600      ; 
                        3600       ; 
                        604800     ; 
                        86400 )

        IN      NS      soapub.m2-1.ephec-ti.be.
		
@ 10800 IN MX 10 mail
@ 10800 IN SPF "v=spf1 a ip4:108.142.167.150 mx include:_spf.google.com ?all"
@ 10800 IN TXT "v=spf1 a ip4:108.142.167.150 mx include:_spf.google.com ?all"
dkim._domainkey 1000 IN TXT "v=DKIM1; k=rsa; t=y;  p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDgegxIM+FCbsQq1yn1xTI+NcMlbXZorrlpxBWF6h7YzI5sjZXh7KiZNabl7B6zqdbHCinmsjxGZB/0GvqyyFKtOs4ZPIDNrSQbhK/h/4jSbkDT9c1NhmSELVTl0ZZMaj+hnNhlgVLF3zP4TD0bx9tF/4tZlA/ezmhaP56i4C07swIDAQAB;"

b2b	IN	A	108.142.167.150
www	IN      A       108.142.167.150
mail    IN      A       108.142.167.150
soapub   IN      A      108.142.167.150

