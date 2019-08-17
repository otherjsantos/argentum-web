FROM tomcat:7.0.96-jdk8
MAINTAINER joaomarcosfelixds
ENV DIR /usr/local/tomcat
COPY ./target/*.war $DIR/webapps
WORKDIR $DIR/bin
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]