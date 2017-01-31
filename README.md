--------------------

## Source Control
Project is on [Github](https://github.com/sigspl/qa.documentation.scraper).

##Contribution Guidelines
Do your work in a branch, then submit a pull request to be reviewed by another developer.

## Deploying
QA and UAT are deployed by merging branches into the [qa] or [uat] branches and pushing the branch to Github. Hudson monitors the QA and UAT branch on Github and will automatically build and deploy to the appropriate server(s).

| Environment | Build | Notes |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------|
| Master | [![Master]] | Deploys to a staging deploy folder on ATL-SETWEB1 |
| Staging | [![Staging]] | Automatic Deploy |
| UAT | [![UAT] | Automatic Deploy |
| QA | [![QA] | Automatic Deploy |

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
