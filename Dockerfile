FROM tomcat:9
COPY target/*.war /usr/local/tomcat/test/myweb.war
RUN apt-get install unzip
RUN cd /usr/local/tomcat/test
RUN pwd
RUN ls
RUN unzip myweb.war
EXPOSE 8080
