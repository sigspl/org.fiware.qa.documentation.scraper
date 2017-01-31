--------------------

## Source Control
Project is on [Github](https://github.com/sigspl/qa.documentation.scraper).

##Contribution Guidelines
Do your work in a branch, then submit a pull request to be reviewed by another developer.

## Deploying
- Use Docker to run this service
First, need to build the base image (subfolder) with Scrapy; then run build.sh to build image and run container.
Currently, Catalogue scraping is scheduled for once in a week Saturday morning.
To start scraping manually, run:
```docker exec qa.documentation.scraper /app/fiware/run.sh.```

System saves data to /app/fiware/items.json.
Manual export of the results file:
```docker cp qa.documentation.scraper:/app/fiware/items.json .```

###Production Deployment
NA

## Servers
### Environments

#### QA
- DB: NA
- Web: NA
- URL:  NA (internal only)

#### UAT
- DB: NA
- Web: NA
- URL: NA

#### Stagings
- DB: NA
- Web: NA
- URL: NA

#### Production
- DB: NA
- Web NA
- URL: NA


### Developer Notes:
NA

#### Load Balancer
NA


#### Data Caching
NA

### Output Caching
NA

## Database Backups
NA
