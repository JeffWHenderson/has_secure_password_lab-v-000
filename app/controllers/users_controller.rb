class UsersController < ApplicationController
  def new
    if session.include?(:name)
      redirect_to welcome_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      redirect_to :'/signup' #signup_path
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
