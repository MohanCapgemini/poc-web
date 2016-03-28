FROM java:8
COPY poc-web-environment.properties /usr/src/poc-web-environment.properties
COPY microservice-demo-web-0.0.1-SNAPSHOT.jar /usr/src/microservice-demo-web-0.0.1-SNAPSHOT.jar
WORKDIR /usr/src
CMD java -jar -Dconfig.home="/usr/src" microservice-demo-web-0.0.1-SNAPSHOT.jar