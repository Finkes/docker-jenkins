FROM jenkins:latest
USER root
RUN wget https://get.docker.com/builds/Linux/i386/docker-latest.tgz
RUN tar -xvzf docker-latest.tgz
RUN mv docker/* /usr/bin
USER jenkins
