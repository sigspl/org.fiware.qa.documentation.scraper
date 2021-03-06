#!/bin/sh
DATE=$(date +"%Y%m%d")
ORG="iais.nm"
PRODUCT="qa.documentation.scraper"

TAG="$ORG/$PRODUCT:$DATE"
TAG_LATEST="$ORG/$PRODUCT:latest"

echo "building image: $TAG + $TAG_LATEST"
docker build -f Dockerfile -t $TAG -t $TAG_LATEST .

docker rm -f $PRODUCT || true
docker run -d -p 5000:5000 --name="$PRODUCT" $TAG tail -f /dev/null

#docker exec qa.documentation.scraper /app/fiware/run.sh

