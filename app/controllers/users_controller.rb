class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    raise params[:user][:name].inspect
    redirect_to '/'
  end

  def welcome
    #@user = sessions[:username]
    #"Hi, #{username}."
  end
end
