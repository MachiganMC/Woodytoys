FROM trafex/php-nginx

COPY www.m2-1.ephec-ti.be/ /var/www/www.m2-1.ephec-ti.be/html/
COPY www.m2-1.ephec-ti.be.conf /etc/nginx/sites-enabled/www.m2-1.ephec-ti.be.conf
COPY b2b.m2-1.ephec-ti.be/ /var/www/b2b.m2-1.ephec-ti.be/html/
COPY b2b.m2-1.ephec-ti.be.conf /etc/nginx/sites-enabled/b2b.m2-1.ephec-ti.be.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

