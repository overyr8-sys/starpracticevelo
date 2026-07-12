FROM eclipse-temurin:25-jre

WORKDIR /server

COPY . .

EXPOSE 25565
EXPOSE 8081

CMD ["sh", "-c", "java -Xms512M -Xmx512M -jar *.jar"]
