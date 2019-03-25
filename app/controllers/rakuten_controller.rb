class RakutenController < ApplicationController
  
  def items_search
    search_rakuten_api("イヤホン")
  end

  def eye
    search_rakuten_api("アイマスク")
    render "items_search"
  end

  def ear
    search_rakuten_api("イヤホン")
    render "items_search"
  end

  def aroma
    search_rakuten_api("アロマ")
    render "items_search"
  end

  
  
  
  def search_rakuten_api(keyword)
  @items = RakutenWebService::Ichiba::Item.search(keyword: keyword, hits: 10)
  # binding.pry
  #   items.each_with_index do |item, i|
  #     # { url: item['affiliateUrl'], image: c, name: item['itemName'], price: item['itemPrice'] }
  #     instance_variable_set('@url' + i.to_s, item['affiliateUrl'])
  #     instance_variable_set('@image' + i.to_s,  item['mediumImageUrls'])
  #     instance_variable_set('@name' + i.to_s,  item['itemName'])
  #     instance_variable_set('@price' + i.to_s,  item['itemPrice'])
  #   end
  end
end