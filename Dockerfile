FROM tomcat:9
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
RUN apt-get install unzip
RUN cd /usr/local/tomcat/webapps/
RUN unzip myweb.war
EXPOSE 8080
