class SessionsController < ApplicationController

  def top
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "登録に成功しました"
      redirect_to home_asmr_top_path
    else
      render "top"
    end
  end

  def login
    user = User.find_by(name: params[:name], password: params[:password])
    if user 
      redirect_to home_asmr_top_path
    else
      render "top"
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
