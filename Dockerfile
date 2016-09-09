#FROM ubuntu
FROM python:2.7-slim
# thx to hamiltont/docker-cron

COPY . /app/

RUN pip install https://bitbucket.org/dbenamy/devcron/get/tip.tar.gz
RUN /app/fiware/install.sh

# Run scraper every night at 00:01
RUN mkdir /cron && \ 
    echo "01 00 * * * /app/fiware/run.sh" > /cron/crontab 

CMD ["devcron.py", "/cron/crontab"]
EXPOSE 5000

