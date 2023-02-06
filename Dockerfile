FROM tomee:8-jre-1.7.2-webprofile
EXPOSE 8080
ADD /calculator-servlet-example/target/mycalcwebapp.war /usr/var/lib/tomcat9/webapps/
CMD ["catalina.sh", "run"]