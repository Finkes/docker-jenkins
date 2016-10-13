FROM jenkins:latest
USER root
RUN groupadd -g 127 docker
RUN usermod -G docker jenkins
RUN wget https://get.docker.com/builds/Linux/i386/docker-latest.tgz
RUN tar -xvzf docker-latest.tgz
RUN mv docker/* /usr/bin
#USER jenkins  # does not work because docker socket userid/groupid
