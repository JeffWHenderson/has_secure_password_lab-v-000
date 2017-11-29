class User < ActiveRecord::Base
    validates :email, confirmation: true
  # is valid if password and password_confirmation match
  # is valid if password is set and password_confirmation is nil
  # is invalid if password and password_confirmation are both non-nil and don't match

  # returns the user if credentials match
  # returns falsey if credentials don't match
  def authenticate
  end
  
end
