require 'open-uri'

class OnlineCatalog

  def OnlineCatalog.lookup(sku)
    json = open('https://www.jeffcohenonline.com/amazon.json').read
    data = JSON.parse(json)
    return data.detect { |item| item['ASIN'] == sku }
  end
  
end
