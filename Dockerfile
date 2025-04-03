FROM openjdk:11-jre-slim

LABEL maintainer="Pradeep Reddy Nadagouni pradeep@example.com"
LABEL artifact="retail-banking"
LABEL name="Retail Banking"

ARG JAR_FILE=target/retail.banking-1.0.jar
COPY target/retail.banking-1.0.jar app.jar  # Use the exact JAR file path

EXPOSE 9090

ENTRYPOINT [ "java", "-jar", "/app.jar" ]
