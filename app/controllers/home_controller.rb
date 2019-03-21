class HomeController < ApplicationController
  include  HomeHelper
  require 'google/apis/youtube_v3'

  
  def top
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to home_asmr_top_path
    else
      render "top"
    end
  end

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

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
