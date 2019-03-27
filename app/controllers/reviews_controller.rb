class ReviewsController < ApplicationController
  include SessionsHelper

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

  # 各アーティスト

  def ppomo
    @review = Review.new
    @name = "ppomo"
  end

  def hatomugi
    @review = Review.new
    @name = "hatomugi"
  end

  def muki
    @review = Review.new
    @name = "muki"
  end

  def cham
    @review = Review.new
    @name = "cham"
  end

  def umino
    @review = Review.new
    @name = "umino"
  end

  def jae
    @review = Review.new
    @name = "jae"
  end

  # アーティスト応援ページ
  def edit
    @reviews = Review.where(asmr: "ppomo").page(params[:page]).per(5)
  end

  def hatomugi_share
    @reviews = Review.where(asmr: "hatomugi").page(params[:page]).per(5)
  end

  def cham_share
    @reviews = Review.where(asmr: "cham").page(params[:page]).per(5)
  end

  def muki_share
    @reviews = Review.where(asmr: "muki").page(params[:page]).per(5)
  end

  def umino_share
    @reviews = Review.where(asmr: "umino").page(params[:page]).per(5)
  end

  def jae_share
    @reviews = Review.where(asmr: "jae").page(params[:page]).per(5)
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
end
