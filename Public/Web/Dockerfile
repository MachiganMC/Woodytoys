FROM trafex/php-nginx

COPY www.woodytoys.lab/ /var/www/www.woodytoys.lab/html/
COPY www.woodytoys.lab.conf /etc/nginx/sites-enabled/www.woodytoys.lab.conf
COPY b2b.woodytoys.lab/ /var/www/b2b.woodytoys.lab/html/
COPY b2b.woodytoys.lab.conf /etc/nginx/sites-enabled/b2b.woodytoys.lab.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

