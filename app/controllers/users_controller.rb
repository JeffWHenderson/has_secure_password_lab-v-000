class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save && @user.authenticate
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      render signup_path
    end
  end

  def welcome
    @user = User.find(session[:user_id])
    #"Hi, #{username}."
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
