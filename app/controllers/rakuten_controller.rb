class RakutenController < ApplicationController
  
  def items_search
    search_rakuten_api("まくら")
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
  end
end