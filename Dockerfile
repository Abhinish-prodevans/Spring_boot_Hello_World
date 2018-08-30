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

                                                                 RUN mkdir ~/demo

                                                                 ENV HOME $(pwd)

                                                                 WORKDIR $HOME

                                                                 VOLUME /tmp

                                                                 ADD . $HOME/

                                                                 ENTRYPOINT ["java","-jar","/target/demo-0.0.1-SNAPSHOT.jar"]