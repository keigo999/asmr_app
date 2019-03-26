class ReviewsController < ApplicationController
  include SessionsHelper

  def edit
    @reviews = Review.where(asmr: "ppomo")
  end


  def create
    @review = Review.new(review_params)
    @review.attributes = {user_id: current_user.id}
      case @review.title 
      when ppomo
        @review.save
        redirect_to ppomo_path
      when hatomugi
        @review.save
        redirect_to hatomugi_path
      when cham
        @review.save
        redirect_to cham_path
      when muki
        @review.save
        redirect_to muki_path
      when umino
        @review.save
        redirect_to umino_path
      when jae
        @review.save
        redirect_to jae_path
      else
        render "favorite"
      end
  end

  # 各アーティスト

  def ppomo
    @review = Review.new
  end

  def hatomugi
    @review = Review.new
  end

  def muki
    @review = Review.new
  end

  def cham
    @review = Review.new
  end

  def umino
    @review = Review.new
  end

  def jae
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:asmr, :title, :body, :user_id)
  end
end
