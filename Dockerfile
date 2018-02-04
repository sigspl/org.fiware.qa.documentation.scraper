FROM registry.gitlab.cc-asp.fraunhofer.de:4567/iais.nm/finext/scrapy1.3.0-ubuntu16

COPY . /app/

WORKDIR /app/fiware
RUN /app/fiware/install.sh

EXPOSE 5000

