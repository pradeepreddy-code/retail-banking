FROM openjdk:11-jre-slim

LABEL maintainer="Pradeep Reddy Nadagouni pradeep@example.com"
LABEL artifact="retail-banking"
LABEL name="Retail Banking"

COPY ./target/retail.banking-1.0.jar app.jar  # Explicitly reference the relative path

EXPOSE 9090  # Expose the port

ENTRYPOINT [ "java", "-jar", "/app.jar" ]
