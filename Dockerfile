######################################################################
#   This is the dockerfile for containerizing the Springboot app     #
#   Created by : Abhinish Raj                                        #
#   Date       :  30-Aug-18                                          #
######################################################################

##FROM IS USED TO PULL THE RESPECTIVE IMAGE WHICH IS REQUIRED TO RUN
## YOUR APPLICATION INSIDE THE CONTAINER YOU CAN FIND LOT OF IMAGE IN
## DOCKER HUB
FROM openjdk:8-jdk-alpine
MAINTAINER abhinish@prodevans.com
VOLUME /tmp
COPY /target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]