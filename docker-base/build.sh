#!/bin/sh
DATE=$(date +"%Y%m%d")
ORG="iais.nm"
PRODUCT="scrapy1.3.0-ubuntu16"

TAG="$ORG/$PRODUCT:$DATE"
TAG_LATEST="$ORG/$PRODUCT:latest"

echo "building image: $TAG + $TAG_LATEST"
docker build -f Dockerfile -t $TAG -t $TAG_LATEST .

