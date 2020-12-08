# Getting Started

## Requirements
Java 15

Gradle 6.6+

### Host name aliases in hosts file
cat `127.0.0.1 discovery-service-1.com
127.0.0.1 discovery-service-2.com
127.0.0.1 discovery-service-3.com` >> /etc/hosts

## Base URL
http://localhost:8761/eureka/

## Build and run replicated
`gradlew build`

`gradlew jib`

`docker-compose up`

### Or by hands
#### Default profile without replication
`gradlew bootRun`

#### Specify profile
`gradlew bootRun --args='--spring.profiles.active=default'`

### Replicated setup

### In single node setup
Use configuration:
`ureka.client.register-with-eureka=false
 eureka.client.fetch-registry=false
 logging.level.com.netflix.eureka=OFF
 logging.level.com.netflix.discovery=OFF`

### Spring Initializr recipe
https://start.spring.io/#!type=gradle-project&language=java&platformVersion=2.4.0.RELEASE&packaging=jar&jvmVersion=15&groupId=com.fdobrotv&artifactId=discoveryService&name=discoveryService&description=Base%20project%20for%20microservice%20discovery%20and%20cloud%20routing&packageName=com.fdobrotv.discoveryService&dependencies=cloud-eureka-server

## Install k8s
1) install hypervisor (virtualbox or hyperkit)
2) install minikube
3) install kubectl
4) minikube config set driver virtualbox
or hyperkit
5) minikube start --container-runtime=cri-o

