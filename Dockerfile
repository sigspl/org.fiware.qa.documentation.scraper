FROM iais.nm/scrapy1.3.0-ubuntu16

COPY . /app/

WORKDIR /app/fiware
RUN /app/fiware/install.sh

EXPOSE 5000

