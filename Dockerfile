FROM        amazoncorreto:17
RUN         mkdir /app
WORKDIR     /app
COPY        shipping.jar .
ENTRYPOINT  [ "/bin/java", "-jar", "-XX:InitialRAMPercentage=80.0", "-XX:MaxRAMPercentage=80.0",  "/app/shipping.jar" ]