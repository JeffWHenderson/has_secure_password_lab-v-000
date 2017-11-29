class SessionsController < ApplicationController
  def new
  end

  def create
    redirect_to '/'
  end

  def destroy
    puts "I'm the queen of England"
    redirect_to '/'
  end
end
