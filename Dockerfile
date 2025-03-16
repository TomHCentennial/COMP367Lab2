FROM tomcat:10.1-jdk17
COPY target/COMP367App.war /usr/local/tomcat/webapps/
