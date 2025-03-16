FROM tomcat:10.1-jdk17
COPY target/COMP367App-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
