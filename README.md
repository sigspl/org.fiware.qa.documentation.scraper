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
- Trigger the production build
- Files will be deployed to \\\\192.168.157.211\deploy\E$\prod\webs\set\SetBat
- Move the files from the deploy folder to the webs folder on each of the three production servers
- Make sure that you only deploy to one server at a time and that the app start has finished running on the server before deploying to the next one
- This is because there is some caching that happens on AppStart and we need to limit the database thrashing
- See Production Server information below

## Servers
### Environments

#### QA
- DB: na
- Web: na
- URL:  na (internal only)

#### UAT
- DB: na
- Web: na
- URL: na

#### Stagings
- DB: na
- Web: na
- URL: na

#### Production
- DB: na
- Web na
- URL: na


### Developer Notes:
na

#### Load Balancer
The load balanced servers are directly accessible internally using these URLs:
- na


#### Data Caching
na

### Output Caching
na

## Database Backups

na
