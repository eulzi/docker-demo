FROM gradle:6.8.2-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon --exclude-task test

FROM adoptopenjdk/openjdk11
COPY --from=build /home/gradle/src/build/libs/*.jar docker-demo.jar
CMD ["java" , "-jar", "docker-demo.jar"]