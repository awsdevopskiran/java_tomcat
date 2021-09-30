FROM tomcat:9
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
unzip /usr/local/tomcat/webapps/myweb.war
EXPOSE 8080
