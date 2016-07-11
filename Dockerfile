FROM java:8-jdk

RUN apt-get update && \
    apt-get install -y unzip apt-transport-https && \
    echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823 && \
    apt-get update

RUN apt-get install sbt && \
    sbt version






