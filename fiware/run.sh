#!/bin/bash

rm items.json || true
scrapy crawl fige -o items.json
