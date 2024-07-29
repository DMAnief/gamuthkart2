FROM ubuntu:20.04 
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
RUN cd /root/ && wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.91/bin/apache-tomcat-9.0.91.tar.gz
RUN cd /root/ && tar -xvf apache-tomcat-9.0.91.tar.gz
RUN cd /root/ && mv apache-tomcat-9.0.91 tomcat
COPY target/gamutkart.war /root/tomcat/webapps
ENTRYPOINT /root/tomcat/bin/startup.sh && bash
EXPOSE 8080
WORKDIR /root/

