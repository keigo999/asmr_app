class ReviewsController < ApplicationController
  include SessionsHelper
  before_action :set_review, only:[:ppomo, :hatomugi, :cham, :muki, :umino, :jae] 

  # コメント送信後アクション
  def create
    @review = Review.new(review_params)
    @review.attributes = {user_id: current_user.id}
      case @review.asmr 
      when "ppomo"
        @review.save
        redirect_to reviews_edit_path
      when "hatomugi"
        @review.save
        redirect_to hatomugi_share_path
      when "cham"
        @review.save
        redirect_to cham_share_path
      when "muki"
        @review.save
        redirect_to muki_share_path
      when "umino"
        @review.save
        redirect_to umino_share_path
      when "jae"
        @review.save
        redirect_to jae_share_path
      else
        redirect_to favorite_path
      end
  end

  # 各アーティスト(favorite.html.erb)

  def ppomo
    @name = "ppomo"
  end

  def hatomugi
    @name = "hatomugi"
  end

  def muki
    @name = "muki"
  end

  def cham
    @name = "cham"
  end

  def umino
    @name = "umino"
  end

  def jae
    @name = "jae"
  end

  # アーティスト応援ページ(~share.html.erb)
  def edit
    @reviews = Review.where(asmr: "ppomo").page(params[:page]).per(5).order(created_at: :desc)
  end

  def hatomugi_share
    @reviews = Review.where(asmr: "hatomugi").page(params[:page]).per(5).order(created_at: :desc)
  end

  def cham_share
    @reviews = Review.where(asmr: "cham").page(params[:page]).per(5).order(created_at: :desc)
  end


  def muki_share
    @reviews = Review.where(asmr: "muki").page(params[:page]).per(5).order(created_at: :desc)
  end

  def umino_share
    @reviews = Review.where(asmr: "umino").page(params[:page]).per(5).order(created_at: :desc)
  end

  def jae_share
    @reviews = Review.where(asmr: "jae").page(params[:page]).per(5).order(created_at: :desc)
  end


  # クレジット処理(今回は実装しきれていません)
  def pay
  end

  def purchase
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(currency: 'jpy', amount: 1000, card: params['payjp-token'])
    flash[:notice] = "ご支援ありがとうございます"
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:asmr, :title, :body, :user_id)
  end

  def set_review
    @review = Review.new
  end
end
