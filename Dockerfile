# Utiliser une image JDK 17
FROM amazoncorretto:17-alpine-jdk

ARG JAR_FILE=target/*.jar

# Copier le JAR de l'application dans le conteneur
COPY ${JAR_FILE} svc-registry.jar

# Commande pour exécuter l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/svc-registry.jar"]

# Exposer le port 8761
EXPOSE 8761

#docker build -t loicsanou/serviceregistry:0.0.1 .
#docker run -d -p 8761:8761 --name serviceregistry <imageId>