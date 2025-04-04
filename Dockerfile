FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/retail-banking-1.0.jar app.jar
COPY wait-for-it.sh wait-for-it.sh
RUN chmod +x wait-for-it.sh
ENTRYPOINT ["./wait-for-it.sh", "retail-mysql:3306", "--timeout=60", "--strict", "--", "java", "-jar", "app.jar"]
