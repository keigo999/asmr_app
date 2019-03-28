class SessionsController < ApplicationController
  include SessionsHelper

  def top
    @user = User.new
  end


  def login
    user = User.find_by(name: params[:name], password: params[:password])
    if user
      log_in(user)
      flash[:notice] = "またお越しいただきありがとうございます"
      redirect_to home_asmr_top_path
    else
      render "top"
    end
  end

  # user登録
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:notice] = "登録に成功しました"
      redirect_to home_asmr_top_path
    else
      render json: "top"
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
