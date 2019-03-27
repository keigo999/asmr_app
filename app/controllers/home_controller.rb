class HomeController < ApplicationController
  caches_action :search_list
  include  HomeHelper
  require 'google/apis/youtube_v3'


  #ランディングページ
  def asmr_top
  end

  #検索ページ
  def sound_search
  end

  #検索結果表示ページ
  def search_list
    Rails.cache.clear
    @query = params[:query]
    search(@query)
  end

  # お気に入り管理ページ
  def favolite
  end

  # ブラウザバック用アクション
  def search_response
    render "search_list"
    Rails.cache.clear
  end

  # シャンプーボタン用アクション
  def head_spa
    Rails.cache.clear
    @query = "asmrシャンプー"
    search(@query)
    render "search_list"
  end

  # 耳かきボタン用アクション
  def ear_pick
    Rails.cache.clear
    @query = "asmr耳かき"
    search(@query)
    render "search_list"
  end

  def typing
    Rails.cache.clear
    @query = "asmrタッピング"
    search(@query)
    render "search_list"
  end

  def random
    query = ["asmr耳かき", "癒やしのasmr", "asmrシャンプー", "asmrアロエ", "asmr砂", "asmrタッピング"].shuffle[1]
    search_only(query)
    render "random"
  end
end
