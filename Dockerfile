# jdk image pull(jdk + gradle -> jar)
FROM eclipse-temurin:17-jdk-alpine as builder

# jar
ARG JAR_FILE=build/libs/*.jar

# copy
COPY ${JAR_FILE} ./backend.jar

# run
ENTRYPOINT [ "java", "-jar", "./backend.jar" ]
