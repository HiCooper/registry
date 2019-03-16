FROM java:8-jre
MAINTAINER HiCooper <berry_cooper@163.com>
ADD ./build/libs/*.jar /app/registry-0.0.1-SNAPSHOT.jar
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xmx200m","-jar","/app/registry-0.0.1-SNAPSHOT.jar"]