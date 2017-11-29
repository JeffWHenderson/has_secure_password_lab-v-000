class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    redirect_to '/'
  end

  def welcome
    #@user = sessions[:username]
    #"Hi, #{username}."
  end
end
