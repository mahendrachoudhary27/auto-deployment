FROM  centos/httpd:latest
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page288/frica.zip /var/www/html
WORKDIR  /var/www/html
RUN  unzip frica.zip
RUN  rm -rf frica.zip
RUN  cp -rf frica/* .
RUN  rm -rf frica
EXPOSE  80
CMD  [ "usr/sbin/httpd" , "-DFOREGROUND" ]
