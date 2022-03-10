class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params["user"])
    @user.password = BCrypt::Password.create(params["user"]["password"])
    @user.save
    flash[:notice] = "You have successfully signed up - Now Log In to Get Started!"
    redirect_to "/sessions/new"
  end
end

