FROM java:openjdk-8u72-jdk
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
RUN apt-get install screen nano vim git -y

WORKDIR /opt
RUN git clone https://github.com/cloudfoundry/uaa.git

#VOLUME ["/uaa"]

EXPOSE 8080

ENTRYPOINT /start_uaa.sh
