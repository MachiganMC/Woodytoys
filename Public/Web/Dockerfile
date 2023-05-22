FROM trafex/php-nginx

RUN apk add nano

COPY www.m2-1.ephec-ti.be/ /var/www/www.m2-1.ephec-ti.be/html/
COPY www.m2-1.ephec-ti.be.conf /etc/nginx/sites-enabled/www.m2-1.ephec-ti.be.conf
COPY b2b.m2-1.ephec-ti.be/ /var/www/b2b.m2-1.ephec-ti.be/html/
COPY b2b.m2-1.ephec-ti.be.conf /etc/nginx/sites-enabled/b2b.m2-1.ephec-ti.be.conf
COPY certificate.crt /etc/ssl/certificate.crt
COPY ca_bundle.crt /etc/ssl/ca_bundle.crt
COPY private.key  /etc/ssl/private.key
 
COPY nginx.conf /etc/nginx/nginx.conf
RUN cat certificate.crt ca_bundle.crt >> certificate.crt

EXPOSE 80
EXPOSE 443
