FROM tomcat:9
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
RUN apt-get install unzip
RUN unzip /usr/local/tomcat/webapps/myweb.war
EXPOSE 8080
