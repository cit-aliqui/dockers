#rdevops27/httpd:v2
FROM centos
RUN yum install httpd -y
COPY mod_jk.so /etc/httpd/modules/mod_jk.so
RUN chmod +x /etc/httpd/modules/mod_jk.so
COPY mod-jk.conf /etc/httpd/conf.d/mod-jk.conf
COPY worker.properties /etc/httpd/conf.d/worker.properties 
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
