FROM fedora:latest
RUN dnf upgrade -y
  && dnf install -yqq tuxpaint vim httpd
ADD myinfo.html /var/www/html/
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
