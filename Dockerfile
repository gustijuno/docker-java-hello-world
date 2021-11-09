# Linux image 
FROM alpine
WORKDIR /root/hello-world
COPY HelloWorld.java /root/hello-world

# install JDK
RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

#compile
RUN javac HelloWorld.java
ENTRYPOINT javac HelloWorld
