# Utiliser une image JDK 17
FROM amazoncorretto:17-alpine-jdk

ARG JAR_FILE=target/*.jar

# Copier le JAR de l'application dans l'image
COPY ${JAR_FILE} svc-registry.jar

# Commande pour exécuter l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/svc-registry.jar"]

# Exposer le port 8761
EXPOSE 8761

#docker build -t loicsanou/svc-registry:0.0.1 .
#docker run -d -p 8761:8761 --name svc-registry <imageId>