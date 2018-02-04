# What is this?

This component crawls the Generic Enabler (GE) Catalogue websites. A JSON file items.json stores the parsed content about GEs.

# Installation

* Checkout this repository
* Build base environment image by running `docker-base/build.sh`.
* Run the scraper app image by running `build.sh`.
* Attach console to container by `docker exec -it qa.documentation.scraper bash` and execute `run.sh` to start crawling.
* The crawling process takes about 15 minutes if the Catalogue server is well accessible.
* Use the file items.json for further processing e.g. text mining to assess quality of documentation.
