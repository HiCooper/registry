FROM java:8-jre
MAINTAINER HiCooper <berry_cooper@163.com>

ADD ./build/libs/*.jar /app/registry.jar
CMD ["java", "-Xmx200m", "-jar", "/app/registry.jar"]

EXPOSE 8761