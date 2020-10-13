FROM ubuntu:20.04
RUN apt-get update && apt-get install -y gnupg2 ca-certificates
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
RUN apt-get update
RUN apt-get install -y mongodb-org-shell \
    mongodb-org-tools \
    curl \
    wget \
    git \
    zip \
    htop
    
