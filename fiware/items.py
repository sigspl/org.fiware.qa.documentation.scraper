# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy


# each property reflects a tab in the FIWARE Catalogue UI, see e.g.
# http://catalogue.fiware.org/enablers/complex-event-processing-cep-proactive-technology-online
# Guide: https://forge.fiware.org/plugins/mediawiki/wiki/fiware/index.php/Working_with_the_FIWARE_catalogue#Guidelines_on_what_to_write
class FiwareEnablerItem(scrapy.Item):

    url = scrapy.Field()
    enabler = scrapy.Field()
    text = scrapy.Field()
    meta = scrapy.Field()

