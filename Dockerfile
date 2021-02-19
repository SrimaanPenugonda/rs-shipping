FROM      maven
RUN       mkdir /app
WORKDIR   /app
COPY      pom.xml .
COPY      src src
RUN       mvn clean package
CMD       ["java", "-jar", "target/shipping-1.0.jar"]
