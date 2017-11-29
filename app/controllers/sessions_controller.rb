class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    raise params[:user][:password].inspect
    sessions[:user_name] = params[:user][:name]
    redirect_to '/'
  end

  def destroy
    puts "I'm the queen of England"
    redirect_to '/'
  end
end
