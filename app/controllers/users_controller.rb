class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params).inspect
    params[:user][:name].inspect
    params[:user][:password]
    redirect_to '/'
  end

  def welcome
    #@user = sessions[:username]
    #"Hi, #{username}."
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
