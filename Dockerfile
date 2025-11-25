# Image de base Java - Stable et maintenue
FROM eclipse-temurin:17-jdk-alpine
# Définir le répertoire de travail
WORKDIR /app
# Copie du fichier JAR construit par Maven
COPY target/*.jar app.jar
# Exposer le port (8080 pour Spring Boot)
EXPOSE 9090
# Commande de démarrage
ENTRYPOINT ["'java", "-jar", "app.jar"]
