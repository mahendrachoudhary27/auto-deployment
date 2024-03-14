FROM  centos/httpd:latest
WORKDIR  /var/www/html
RUN  echo "hello dear" >>./index.html
EXPOSE  80
CMD  [ "usr/sbin/httpd" , "-DFOREGROUND" ]
