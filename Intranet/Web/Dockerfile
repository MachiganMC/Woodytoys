FROM webdevops/php-nginx

COPY default.conf /etc/nginx/conf.d/
COPY Project/ /var/www/html/

CMD ["sudo", "ln", "-s", "/etc/nginx/sites-available/localhost", "/etc/nginx/sites-enabled/"]
CMD ["nginx", "-g", "daemon off;"]
