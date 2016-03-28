class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.create params.require(:user).permit(:email)
  end
end
