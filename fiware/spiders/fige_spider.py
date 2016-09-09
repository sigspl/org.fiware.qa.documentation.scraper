import scrapy
from scrapy.spiders import Rule, CrawlSpider
from scrapy.linkextractors import LinkExtractor
from fiware.items import FiwareEnablerItem

class FigeSpider(CrawlSpider):
    name = "fige"
    allowed_domains = ["catalogue.fiware.org"]
    start_urls = [
        "http://catalogue.fiware.org/enablers/"
	
    ]
    rules = (
        Rule(LinkExtractor(allow=(),deny=('^http://catalogue.fiware.org/enablers/%20http:')), callback="parse_items", follow=True),)

    def parse_items(self, response):
            item = FiwareEnablerItem()
            title = ' '.join( response.xpath("//*[@class='title']//text()").extract());
            if title=='Generic Enablers' or "/enablers/%20" in response.url or "/email/node/" in response.url: 
		print "skip: " + title + " / " + response.url
                return
	    print "processing title: " + title +   " from url: " + response.url

            item['enabler'] = title;
            item['url'] = response.url
            item['text'] = ' ' .join( response.xpath("//*[contains(concat(' ', @class, ' '), ' field-type-text-with-summary ')]//text()").extract())
            #item['creating'] = sel.xpath('a/@href').extract()
            #item['documentation'] = sel.xpath('text()').extract()
            #print item['overview']
	    yield item
