FROM eclipse-temurin:25-jre

WORKDIR /server

COPY . .

RUN apt update && apt install -y python3

EXPOSE 25577

CMD ["sh", "-c", "python3 health.py & java -Xms512M -Xmx512M -jar velocity.jar"]
