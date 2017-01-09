#!/bin/bash

cd /app/fiware

rm /app/Dockerfile
rm /app/build.sh
rm /app/fiware/clean.sh


echo "install cronjob.."

#write out current crontab
crontab -l > mycron
#echo new cron into cron file, every Saturday 8:05 am
echo "5 8 * * 6 cd /app/fiware && /app/fiware/run.sh" >> mycron
#install new cron file
crontab mycron
crontab -l
rm mycron

#rm ./install.sh
