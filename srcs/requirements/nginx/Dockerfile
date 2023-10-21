FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY ./conf/default/ /etc/nginx/sites-enabled/default
COPY ./tools/nginx_start.sh /var/www

RUN chmod +x /var/www/nginx_start.sh
RUN mkdir /run/nginx

ENTRYPOINT ["var/www/nginx_start.sh"]

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

