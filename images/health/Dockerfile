#rdevops27/health
FROM centos
RUN yum install httpd -y
COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN echo Hello >/var/www/html/index.html
CMD /run.sh
