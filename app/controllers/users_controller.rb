class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    raise params.inspect
    redirect_to '/'
  end

  def welcome
    #@user = sessions[:username]
    #"Hi, #{username}."
  end
end
