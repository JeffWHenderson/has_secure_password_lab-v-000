class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    params[:user][:name].inspect
    params[:user][:password]
    redirect_to '/'
  end

  def welcome
    #@user = sessions[:username]
    #"Hi, #{username}."
  end
end
