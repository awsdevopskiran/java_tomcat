FROM tomcat:9
COPY java-tomcat-sample/target/*.war /usr/local/tomcat/webapps/myweb.war
# unzip /usr/local/tomcat/webapps/myweb.war
