#!/bin/bash

find . -name "*.pyc" -exec rm -f {} \;
rm items.json
