FROM tomcat:9

COPY target/pcws.war /usr/local/tomcat/webapps/ROOT.war

RUN mkdir -p /export || true

ENV SPRING_PROFILES_ACTIVE=mock
ENV PCWS_DATALOG_DIRECTORY="/export"
ENV PCWS_ACCOUNT_SERVICE_URL="https://bfh-paketblitz-account-service.herokuapp.com"
ENV PCWS_DATASOURCE_JDBC_URL="jdbc:postgresql://<hostname>:<port>/<database-name>"
ENV PCWS_DATASOURCE_USERNAME="dbuser"
ENV PCWS_DATASOURCE_PASSWORD="dbpass"
