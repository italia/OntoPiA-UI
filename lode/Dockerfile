FROM openjdk:8
RUN apt-get update && apt-get -y install maven unzip
ADD https://github.com/essepuntato/LODE/archive/master.zip /lode/

EXPOSE 9090

RUN cd /lode \
		&& unzip master.zip \
		&& cd LODE-master

COPY LodeServlet.java /lode/LODE-master/src/main/java/it/essepuntato/lode/

WORKDIR /lode/LODE-master
CMD ["mvn", "clean", "jetty:run"]
