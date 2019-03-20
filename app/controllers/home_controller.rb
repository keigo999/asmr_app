class HomeController < ApplicationController
  include  HomeHelper
  require 'google/apis/youtube_v3'

  
  def top
  end

  #ランディングページ
  def asmr_top
  end

  #検索ページ
  def sound_search
  end

  #検索結果表示ページ
  def search_list
  end

end
