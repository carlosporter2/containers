FROM java:jdk
MAINTAINER carlosporter@gorillalogic.com

WORKDIR /

# Update the repository sources list
RUN apt-get update

ENV UAA_CONFIG_PATH /uaa
ENV CLOUD_FOUNDRY_CONFIG_PATH /uaa

RUN mkdir /uaa

ADD start_uaa.sh /start_uaa.sh
ADD uaa.yml /uaa/uaa.yml
RUN chmod +x /start_uaa.sh
RUN apt-get install screen nano vim git libssl-dev libapr1-dev libtcnative-1 -y

WORKDIR /opt
RUN git clone -b releases/3.2.1  https://github.com/cloudfoundry/uaa.git

#VOLUME ["/uaa"]

EXPOSE 8080

ENTRYPOINT /start_uaa.sh

