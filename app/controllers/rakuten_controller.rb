class RakutenController < ApplicationController
  
  def items_search
    search_rakuten_api("睡眠")
  end
  
  
  
  
  
  def search_rakuten_api(keyword)
  items = RakutenWebService::Ichiba::Item.search(keyword: keyword, hits: 4)
    items.each_with_index do |item,i|
      instance_variable_set('@url' + i.to_s, item['affiliateUrl'])
      instance_variable_set('@image' + i.to_s, @image = item['mediumImageUrls'])
    end
  end
end