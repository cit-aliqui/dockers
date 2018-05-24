FROM centos
RUN yum install maven -y
COPY settings.xml /etc/maven/settings.xml
RUN groupadd -g 993 gitlab-runner
RUN useradd -g 993 -u 995 gitlab-runner
USER gitlab-runner
CMD cd /opt && mvn package deploy 
