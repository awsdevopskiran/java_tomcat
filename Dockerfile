FROM tomcat:9
COPY target/*.war /usr/local/tomcat/test/myweb.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
