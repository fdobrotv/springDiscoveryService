#THIS IS DRAFT! DON'T USE IT!

FROM amd64/gradle:6.7.1-jdk15 as builder
ENV SRC_DIR=/app/
COPY . $SRC_DIR
WORKDIR $SRC_DIR
RUN gradle build

#FROM adoptopenjdk/openjdk15:alpine
FROM openjdk:15
WORKDIR /work
COPY --from=builder build/libs/*.jar /work

EXPOSE 8761

ENV ACTIVE_PROFILE="local"
ENV JVM_OPTS="-Xmx2048m"

ENTRYPOINT exec java -Dspring.profiles.active=$ACTIVE_PROFILE $JVM_OPTS -ea -jar /work/*.jar