class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    raise params.inspect
    redirect_to '/'
  end

  def destroy
    puts "I'm the queen of England"
    redirect_to '/'
  end
end
