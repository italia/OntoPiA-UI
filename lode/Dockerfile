FROM openjdk:8
RUN apt-get update && apt-get -y install maven

COPY LODE-master /lode/LODE-master

EXPOSE 9999

WORKDIR /lode/LODE-master
CMD ["mvn", "jetty:run"]

# RUN ls /lode


# RUN cd /lode \
#     && unzip master.zip \
#     && cd LODE-master

# WORKDIR /lode/LODE-master
# CMD ["mvn", "clean", "jetty:run", "-Djetty.http.port=9999"]
