class HomeController < ApplicationController
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
    @query = params[:query]
    search(@query)
  end

  # お気に入り管理ページ
  def favolite
  end

  def search_response
    render "search_list"
  end
end
