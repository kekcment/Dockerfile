FROM tomcat:9.0
RUN apt update
RUN apt install git -y
RUN apt install maven -y
WORKDIR /tmp/
RUN git clone https://github.com/kekcment/calculator-servlet-example.git
WORKDIR  /calculator-servlet-example/
RUN mvn package
RUN cp calculator-servlet-example/target/mycalcwebapp.war $CATALINA_HOME/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]