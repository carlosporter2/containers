FROM java:jdk

WORKDIR /

RUN apt-get update

ENV UAA_CONFIG_PATH /uaa_config
ENV CLOUD_FOUNDRY_CONFIG_PATH /uaa_config

RUN mkdir /uaa_config

ADD start_uaa.sh /uaa_config/start_uaa.sh
ADD uaa.yml /uaa_config/uaa.yml
RUN chmod +x /uaa_config/start_uaa.sh

RUN apt-get install screen nano vim git libssl-dev libapr1-dev libtcnative-1 -y

WORKDIR /opt
RUN git clone -b releases/3.2.0  https://github.com/cloudfoundry/uaa.git

EXPOSE 8080

ENTRYPOINT /uaa_config/start_uaa.sh


