FROM amd64/gradle:6.7.1-jdk15 as builder
ENV SRC_DIR=app
WORKDIR /$SRC_DIR
COPY . .
RUN gradle build

FROM openjdk:15
ENV SRC_DIR=app
WORKDIR $SRC_DIR
COPY --from=builder /app/build/libs/*.jar app.jar
EXPOSE 8761

ENV ACTIVE_PROFILE="local"
ENV JVM_OPTS="-Xmx2048m"
ENTRYPOINT exec java -Dspring.profiles.active=$ACTIVE_PROFILE $JVM_OPTS -ea -jar app.jar