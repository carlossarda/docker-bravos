FROM nginx:latest
MAINTAINER Carlos Augusto
COPY ./site /var/www/public
COPY docker/config/site.conf /etc/nginx/conf.d/site.conf
RUN chmod 755 -R /var/www/public
EXPOSE 80 443
ENTRYPOINT ["nginx"]
# Parametros extras para o entrypoint
CMD ["-g", "daemon off;"]
