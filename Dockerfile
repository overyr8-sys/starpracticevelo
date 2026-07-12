FROM eclipse-temurin:25-jre

WORKDIR /server

COPY "velocity (3).jar" velocity.jar
COPY velocity.toml velocity.toml

EXPOSE 25565

CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "velocity.jar"]
