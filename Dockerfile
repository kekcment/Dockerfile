FROM tomcat:9.0
RUN apt update
RUN apt install git -y
RUN apt isntall default-jdk -y
RUN apt install maven -y
RUN git clone https://github.com/kekcment/calculator-servlet-example.git
RUN cd calculator-servlet-example/
RUN mvn package 
RUN cp calculator-servlet-example/target/mycalcwebapp.war /var/lib/tomcat9/webapps/
CMD ["catalina.sh", "run"]