class UsersController < ApplicationController
  def new
    byebug
    @user = User.new
  end
end
