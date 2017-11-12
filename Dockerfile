FROM tomcat:8.0
ADD /home/vagrant/dockerapps/*.jar  /usr/local/tomcat/webapps/
