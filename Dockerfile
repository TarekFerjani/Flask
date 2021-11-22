FROM centos:7
RUN yum update -y && yum install httpd httpd-tools -y

EXPOSE 8080

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
