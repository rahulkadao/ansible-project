FROM centos:7
MAINTAINER rahul.kadao@gmail.com
RUN yum install -y httpd \
   zip \
   unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/idesign.zip /var/www/html
WORKDIR /var/www/html
RUN unzip idesign.zip
RUN cp -rvf interior-design-html-template/* .
RUN rm -rf idesign.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
