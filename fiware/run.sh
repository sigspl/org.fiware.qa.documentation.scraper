#!/bin/bash

echo "working dir:"
pwd
rm items.json || true
scrapy crawl fige -o items.json
