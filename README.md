# Getting Started

## Requirements
Java 15

Gradle 6.6+

## Base URL
http://localhost:8761/eureka/

## Build and run
`gradlew build`

`gradlew bootRun`

### Replicated setup

### In single node setup
Use configuration:
`ureka.client.register-with-eureka=false
 eureka.client.fetch-registry=false
 logging.level.com.netflix.eureka=OFF
 logging.level.com.netflix.discovery=OFF`

### Spring Initializr recipe
https://start.spring.io/#!type=gradle-project&language=java&platformVersion=2.4.0.RELEASE&packaging=jar&jvmVersion=15&groupId=com.fdobrotv&artifactId=discoveryService&name=discoveryService&description=Base%20project%20for%20microservice%20discovery%20and%20cloud%20routing&packageName=com.fdobrotv.discoveryService&dependencies=cloud-eureka-server

