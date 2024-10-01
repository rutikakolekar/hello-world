FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY webapp/target/*.war /usr/local/tomcat/webapps

# Change Tomcat's default port to a different port (e.g., 8081)
RUN sed -i 's/8080/8082/g' /usr/local/tomcat/conf/server.xml

# Expose the new port
EXPOSE 8082
