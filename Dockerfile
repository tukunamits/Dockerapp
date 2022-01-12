FROM tomcat:8
LABEL app=Dockerapp
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
